import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:casl_fit/application/tariff/tariff_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/pages/tariff/components/tariff_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../components/screens/empty_page.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('profile.definition'.tr()),
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            AppImages.background,
            height: 1.sh,
            width: 1.sw,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withValues(alpha: 0.3),
              height: 1.sh,
              width: 1.sw,
            ),
          ),
          BlocBuilder<TariffBloc, TariffState>(
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CarouselSlider.builder(
                          itemCount: state.currentTariff?.length ?? 0,
                          itemBuilder: (context, index, realIndex) {
                            return SizedBox(
                              height: 0.22.sh,
                              child: TariffItem(
                                item: state.currentTariff![index],
                                onPressed: () {},
                                isArrow: false,
                              ),
                            );
                          },
                          options: CarouselOptions(
                            height: 0.2.sh,
                            autoPlay: false,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                                //  print(_currentIndex);
                              });
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: (state.currentTariff ?? []).asMap().entries.take(8).map((entry) {
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
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
