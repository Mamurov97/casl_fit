import 'dart:ui';

import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../application/home/home_bloc.dart';
import '../../components/basic_widgets.dart';
import 'components/date_picker_carousel.dart';
import 'components/icon_notification.dart';
import 'components/multi_line_chart_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF1E1F1C), Color(0xFF2C2F26), Color(0xFF1A1C18)],
                    stops: [0.0, 0.5, 1.0],
                  ),
                ),
                child: Image.asset(
                  AppImages.background,
                  height: 1.sh,
                  width: 1.sw,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),

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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "CASL FIT",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTheme.data.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: AppTheme.colors.primary, fontSize: 18.sp, letterSpacing: 2.3),
                                    ),
                                  ],
                                ),
                              ),
                              IconNotificationButton(
                                onPressed: () {},
                                icon: AppIcons.notification,
                                iconColor: AppTheme.colors.white,
                                count: 2,
                              ),
                            ],
                          ),
                        ),
                        Gap(8.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Container(
                            width: 1.sw,
                            decoration: BoxDecoration(
                              color: AppTheme.colors.secondary,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.r),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    height: 24.h,
                                    AppIcons.people,
                                    colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
                                  ),
                                  Gap(8.h),
                                  state.status != BlocStatus.loading
                                      ? EasyRichText(
                                          state.liveUserCount != 0 ? "Hozirda zalda ${state.liveUserCount ?? 0} kishi " : "Hozirda zalda hech kim yo'q ",
                                          textAlign: TextAlign.center,
                                          defaultStyle: AppTheme.data.textTheme.titleSmall!.copyWith(fontSize: 15.sp, color: AppTheme.colors.white),
                                          patternList: [
                                            EasyRichTextPattern(
                                              targetString: "Hozirda zalda",
                                              style: AppTheme.data.textTheme.titleSmall!.copyWith(color: AppTheme.colors.white, fontSize: 15.sp),
                                            ),
                                            EasyRichTextPattern(
                                              targetString: "${(state.liveUserCount ?? 0)}",
                                              style: AppTheme.data.textTheme.titleMedium!.copyWith(color: AppTheme.colors.primary, fontSize: 15.sp),
                                            )
                                          ],
                                        )
                                      : Padding(
                                          padding: EdgeInsets.only(left: 24.w),
                                          child: Center(
                                            child: SizedBox(
                                                height: 12.h,
                                                width: 12.w,
                                                child: CircularProgressIndicator(
                                                  color: AppTheme.colors.primary,
                                                  strokeWidth: 2,
                                                )),
                                          ),
                                        ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      context.read<HomeBloc>().add(const HomeEvent.getLiveUserCount());
                                    },
                                    child: Icon(
                                      Icons.refresh,
                                      color: AppTheme.colors.primary,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const DatePickerCarousel(),
                        Gap(4.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: MultiLineChartCarousel(),
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
/*    Center(
                    child: Container(
                      decoration: BoxDecoration(color: AppTheme.colors.secondary, borderRadius: BorderRadius.circular(24.r)),
                      height: 0.18.sh,
                      padding: EdgeInsets.all(16.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zaldagi sportchilar soni",
                            style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.white, fontSize: 16.sp),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "10",
                                  style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.primary, fontSize: 26.sp),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),*/