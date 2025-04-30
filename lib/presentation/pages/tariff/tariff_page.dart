import 'package:casl_fit/application/tariff/tariff_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/dto/models/tariff/category_tariff.dart';
import 'package:casl_fit/infrastructure/dto/models/tariff/tariff_model.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/components/screens/empty_page.dart';
import 'package:casl_fit/presentation/pages/tariff/components/tariff_item.dart';
import 'package:casl_fit/presentation/pages/tariff/tariff_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../routes/entity/routes.dart';

class TariffPage extends StatefulWidget {
  const TariffPage({super.key, required this.tariffType, this.tariffList, this.categoryTariffList});

  final TariffType tariffType;
  final List<TariffModel>? tariffList;
  final List<CategoryTariffModel>? categoryTariffList;
  @override
  State<TariffPage> createState() => _TariffPageState();
}

class _TariffPageState extends State<TariffPage> {
  int selectedIndex = 0;
  List<TariffModel> localCategoryList = [];
  final ItemScrollController _scrollController = ItemScrollController();

  @override
  void initState() {
    super.initState();
    localCategoryList = widget.tariffList ?? [];
    if (localCategoryList.isNotEmpty) {
      context.read<TariffBloc>().add(TariffEvent.getTariffList(((localCategoryList).first).tariffData ?? []));
    }
  }

  @override
  Widget build(BuildContext context) {
    final isAllType = widget.tariffType == TariffType.allTarif;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocBuilder<TariffBloc, TariffState>(
          builder: (context, state) {
            if (state.currentTariffStatus.isLoading) return const CircularIndicator();
            if (state.currentTariffStatus.isEmpty) return const ComingSoonPage();
            if (state.currentTariffStatus.isError) {
              return ErrorPage(
                onPressed: () => context.read<TariffBloc>().add(const GetCurrentTariffs()),
                error: state.errorMessage,
              );
            }
            return Column(
              children: [
                if (isAllType)
                  SizedBox(
                    height: 48.h,
                    child: ScrollablePositionedList.builder(
                      itemScrollController: _scrollController,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 6.h),
                      itemCount: localCategoryList.length,
                      itemBuilder: (context, index) {
                        final isSelected = index == selectedIndex;
                        return GestureDetector(
                          onTap: () {
                            context.read<TariffBloc>().add(TariffEvent.getTariffList(localCategoryList[index].tariffData ?? []));
                            setState(() => selectedIndex = index);
                            _scrollController.scrollTo(index: index, duration: const Duration(milliseconds: 200), alignment: 0.5);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              color: isSelected ? AppTheme.colors.primary : Colors.grey[800],
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Center(
                              child: Text(
                                localCategoryList[index].name ?? "",
                                style: TextStyle(
                                  color: isSelected ? AppTheme.colors.black : Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ((widget.tariffList ?? []).isNotEmpty)
                    ? Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.r),
                          child: ListView.builder(
                            itemCount: (state.localTariffList ?? []).length,
                            itemBuilder: (context, index) {
                              return TariffItem(
                                isArrow: true,
                                item: (state.localTariffList ?? [])[index],
                                onPressed: () => context.push("${Routes.root.path}${Routes.tariff.path}${Routes.allTariff.path}${Routes.tariffDetail.path}",
                                    extra: localCategoryList[selectedIndex].tariffData?[index]),
                              );
                            },
                          ),
                        ),
                      )
                    : const Expanded(child: EmptyPage()),
              ],
            );
          },
        ),
      ),
    );
  }
}
