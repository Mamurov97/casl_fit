import 'dart:async';
import 'dart:ui';

import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/pages/home/components/weekday_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../application/home/home_bloc.dart';
import '../../components/basic_widgets.dart';
import '../../components/line_wave.dart';
import 'components/multi_line_chart_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(minutes: 1), (_) {
      context.read<HomeBloc>().add(const HomeEvent.getLiveUserCount());
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CASL FIT",
          style: AppTheme.data.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: AppTheme.colors.primary, fontSize: 20.sp, letterSpacing: 2.3),
        ),
        titleSpacing: 8.w,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Stack(
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
              SafeArea(
                child: SmartRefresher(
                  controller: _refreshController,
                  onRefresh: () {
                    context.read<HomeBloc>().add(const HomeEvent.getLiveUserCount());
                    context.read<HomeBloc>().add(const HomeEvent.getDailyUserCount());
                    _refreshController.refreshCompleted();
                  },
                  onLoading: () {
                    _refreshController.loadComplete();
                  },
                  enablePullDown: true,
                  enablePullUp: false,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Gap(8.h),
                        state.dailyUserCountStatus == BlocStatus.success
                            ? UzbekWeekdaySelector(
                                onChanged: (v) {
                                  context.read<HomeBloc>().add(HomeEvent.getWeekDay(v));
                                },
                              )
                            : const SizedBox(),
                        Gap(4.h),
                        state.dailyUserCountStatus == BlocStatus.success
                            ? Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Kunlik tashriflar statistikasi", style: AppTheme.data.textTheme.titleLarge!.copyWith(color: AppTheme.colors.white)),
                                    Gap(4.h),
                                    MultiLineChartCarousel(
                                        dailyCountResponse: (state.dailyCountResponse?.data ?? [])[state.weekDay],
                                        startWorkTime: state.dailyCountResponse?.startWorkTime ?? "09:00",
                                        endWorkTime: state.dailyCountResponse?.endWorkTime ?? "23:00"),
                                  ],
                                ),
                              )
                            : const Center(
                                child: CircularIndicator(),
                              ),
                        Gap(12.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Container(
                            width: 1.sw,
                            height: 100.h,
                            decoration: BoxDecoration(
                              color: AppTheme.colors.secondary,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                                  padding: EdgeInsets.symmetric(vertical: 35.h),

                            child:Stack(
                              children: [
                                 Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 12.w),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Row(
                                         mainAxisSize: MainAxisSize.min,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         children: [
                                           SvgPicture.asset(
                                             AppIcons.people,
                                             colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
                                           ),
                                           Gap(10.w),
                                           Text(
                                             "Hozirda zalda ",
                                             style: AppTheme.data.textTheme.headlineMedium!.copyWith(color: AppTheme.colors.white),
                                           ),
                                         ],
                                       ),
                                       Padding(
                                         padding: EdgeInsets.only(right: 12.w),
                                         child: Text(
                                           "${(state.liveUserCount ?? 0)}",
                                           style: AppTheme.data.textTheme.displayMedium!.copyWith(color: AppTheme.colors.primary),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                const MultiLineWaveAnimation(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
