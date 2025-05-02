import 'package:casl_fit/application/tariff/tariff_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/dto/models/tariff/tariff_model.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/components/screens/empty_page.dart';
import 'package:casl_fit/presentation/pages/tariff/components/tariff_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../routes/index_routes.dart';

class TariffPage extends StatefulWidget {
  const TariffPage({super.key, this.tariffList});

  final List<TariffModel>? tariffList;

  @override
  State<TariffPage> createState() => _TariffPageState();
}

class _TariffPageState extends State<TariffPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    final length = widget.tariffList?.length ?? 0;
    _tabController = TabController(length: length, vsync: this);
  }

  @override
  void didUpdateWidget(covariant TariffPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.tariffList?.length != oldWidget.tariffList?.length) {
      _tabController.dispose();
      _tabController = TabController(length: widget.tariffList?.length ?? 0, vsync: this);
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocBuilder<TariffBloc, TariffState>(
          builder: (context, state) {
            if (state.allTariffStatus.isLoading) return const CircularIndicator();
            if (state.allTariffStatus.isEmpty) return const EmptyPage();
            if (state.allTariffStatus.isError) {
              return ErrorPage(
                onPressed: () => context.read<TariffBloc>().add(const GetCurrentTariffs()),
                error: state.errorMessage,
              );
            }

            final tariffs = state.tariffs ?? [];

            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 4.w),
                  child: SizedBox(
                    height: 35.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tariffs.length,
                      itemBuilder: (context, index) {
                        final isSelected = _tabController.index == index;
                        return GestureDetector(
                          onTap: () => setState(() => _tabController.index = index),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                            margin: EdgeInsets.symmetric(horizontal: 6.w),
                            decoration: BoxDecoration(
                              color: isSelected ? AppTheme.colors.primary : AppTheme.colors.secondary,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Text(
                                tariffs[index].name ?? '',
                                style: TextStyle(
                                  color: isSelected ? AppTheme.colors.black : AppTheme.colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                // Content
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: tariffs.map((tariff) {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: TariffItem(
                              item: tariff.tariffData?[index],
                              onPressed: () => context.push("${Routes.root.path}${Routes.tariff.path}${Routes.allTariff.path}${Routes.tariffDetail.path}", extra: tariff.tariffData?[index]),
                              isArrow: true,
                            ),
                          );
                        },
                        itemCount: tariff.tariffData?.length,
                      );
                    }).toList(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
