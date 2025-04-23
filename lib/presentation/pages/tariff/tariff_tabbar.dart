import 'dart:ui';

import 'package:casl_fit/application/tariff/tariff_bloc.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/pages/tariff/tariff_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/common/enums/bloc_status.dart';
import '../../components/loadings/circular_indicator.dart';
import '../../components/screens/error_page.dart';

class TariffTabbar extends StatefulWidget {
  const TariffTabbar({super.key});

  @override
  State<TariffTabbar> createState() => _TariffTabbarState();
}

class _TariffTabbarState extends State<TariffTabbar> with TickerProviderStateMixin {
  late TabController tabController;
  bool isNotReload = false;
  String filterKey = "";

  @override
  void initState() {
    tabController = TabController(length: 2, initialIndex: 0, animationDuration: const Duration(seconds: 0), vsync: this);
    tabController.addListener(_listenToTabChanges);
    super.initState();
  }

  int tabIndex = 0;

  void _listenToTabChanges() {
    if (tabIndex != tabController.index) {
      tabIndex = tabController.index;
      final tariffBloc = context.read<TariffBloc>();

      final state = tariffBloc.state;

      if (!state.hasLoadedTariffs) {
        tariffBloc.add(const TariffEvent.getTariffs());
      }
    }
  }

  @override
  void dispose() {
    tabController.removeListener(_listenToTabChanges);
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TariffBloc, TariffState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(

          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text("Tariflar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.h),
                child: Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppTheme.colors.secondary,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: TabBar(
                      controller: tabController,
                      isScrollable: false,
                      physics: const BouncingScrollPhysics(),
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      splashBorderRadius: BorderRadius.circular(8.r),
                      indicator: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      labelStyle: AppTheme.data.textTheme.titleSmall?.copyWith(
                        fontSize: 14.h,
                        fontWeight: FontWeight.w400,
                      ),
                      unselectedLabelStyle: AppTheme.data.textTheme.titleSmall?.copyWith(
                        fontSize: 14.h,
                        fontWeight: FontWeight.w400,
                      ),
                      tabs: const [
                        Tab(text: "Mening tariflarim"),
                        Tab(text: "Barchasi"),
                      ],
                    ),
                  ),
                )),
            elevation: 0,
          ),
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
                    color: Colors.black.withOpacity(0.3),
                    height: 1.sh,
                    width: 1.sw,
                  ),
                ),
                if (state.allTariffStatus == BlocStatus.loading)
                  const Center(
                    child: CircularIndicator(),
                  )
                else if (state.allTariffStatus == BlocStatus.error)
                  Center(
                    child: ErrorPage(
                      onPressed: () {
                        context.read<TariffBloc>().add(const TariffEvent.getTariffs());
                        // context.read<TariffBloc>().add(const TariffEvent.getCategoryTariff());
                      },
                      error: state.errorMessage.toString(),
                    ),
                  )
                else
                  TabBarView(
                    controller: tabController,
                    children: [
                      TariffPage(
                        tariffType: TariffType.myTariff,
                        tariffList: state.tariffs,
                      ),
                      TariffPage(
                        tariffType: TariffType.allTarif,
                        tariffList: state.tariffs,
                        categoryTariffList: state.categoryTariffs,
                      ),
                    ],
                  ),
              ],
            ));
      },
    );
  }
}

enum TariffType { myTariff, allTarif }
