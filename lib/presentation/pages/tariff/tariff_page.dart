import 'package:carousel_slider/carousel_slider.dart';
import 'package:casl_fit/application/tariff/tariff_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/pages/tariff/components/tariff_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../routes/entity/routes.dart';

class TariffPage extends StatefulWidget {
  const TariffPage({super.key});

  @override
  State<TariffPage> createState() => _TariffPageState();
}

class _TariffPageState extends State<TariffPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('profile.definition'.tr()),
      ),
      backgroundColor: Colors.black,
      body: BlocBuilder<TariffBloc, TariffState>(
        builder: (context, state) {
          if (state.currentTariffStatus.isLoading) return const CircularIndicator();
          if (state.currentTariffStatus.isEmpty) return const EmptyPage();
          if (state.currentTariffStatus.isError) {
            return ErrorPage(
              onPressed: () => context.read<TariffBloc>().add(const GetCurrentTariffs()),
              error: state.errorMessage,
            );
          }
          if (state.currentTariffStatus.isSuccess) {
            return Padding(
              padding: EdgeInsets.all(12.h),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 0.2.sh,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                          //  print(_currentIndex);
                        });
                      },
                    ),
                    items: state.currentTariff?.map((data) {
                      return TariffItem(item: data, onPressed: () {}, isArrow: false);
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: (state.currentTariff ?? []).asMap().entries.map((entry) {
                      return Container(
                        width: 8.w,
                        height: 8.h,
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: _currentIndex == entry.key ? AppTheme.colors.primary : AppTheme.colors.white),
                      );
                    }).toList(),
                  ),
                  Gap(24.h),
                  MenuButton(
                    title: 'tariff.all_tariff'.tr(),
                    icon: AppIcons.status,
                    onPressed: () {
                      context.push(
                        "${Routes.root.path}${Routes.tariff.path}${Routes.allTariff.path}",
                      );
                    },
                  ),
                ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
