import 'dart:ui';

import 'package:badges/badges.dart' as badges;
import 'package:casl_fit/infrastructure/dto/models/home/notification_model.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/home/notification/notification_bloc.dart';
import '../../../../domain/common/enums/bloc_status.dart';
import '../../../components/basic_widgets.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with TickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 2,
      initialIndex: 0,
      animationDuration: const Duration(seconds: 0),
      vsync: this,
    );

    // Dastlab birinchi tab uchun chaqirish
    context.read<NotificationBloc>().add(
      GetNotifications(status: tabController.index + 1),
    );

    tabController.addListener(() {
      if (!tabController.indexIsChanging) {
        context.read<NotificationBloc>().add(
          GetNotifications(status: tabController.index + 1),
        );
      }
    });

    super.initState();
  }


  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 8.w,
        title: const Text("Bildirishnomalar", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.read<NotificationBloc>().add( ReadAllNotifications(status: tabController.index+1));
            },
            icon: SvgPicture.asset(
              AppIcons.readAll,
              height: 25,
              width: 25,
              colorFilter: ColorFilter.mode(AppTheme.colors.white, BlendMode.srcIn),
            ),
          ),
        ],
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
                    Tab(text: "Yangiliklar"),
                    Tab(text: "Shaxsiy"),
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
              color: Colors.black.withValues(alpha: 0.3),
              height: 1.sh,
              width: 1.sw,
            ),
          ),
          TabBarView(
            controller: tabController,
            children: [
              _buildNotificationList(
                context,
                selector: (state) => state.newsNotifications,
                statusSelector: (state) => state.statusGet,
              ),
              _buildNotificationList(
                context,
                selector: (state) => state.personalNotifications,
                statusSelector: (state) => state.statusGet,
              ),

            ],
          ),

        ],
      ),
    );
  }
  Widget _buildNotificationList(
      BuildContext context, {
        required List<NotificationModel> Function(NotificationState) selector,
        required BlocStatus Function(NotificationState) statusSelector,
      }) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        final notifications = selector(state);
        final status = statusSelector(state);

        if (status == BlocStatus.loading) {
          return  Center(child: CircularProgressIndicator(color: AppTheme.colors.primary));
        }
        if (status == BlocStatus.error) {
          return Center(child: Text(state.errorMessage ?? 'Error'));
        }
        if (status == BlocStatus.empty) {
          return const Center(child: Text('No notifications'));
        }
        if (status == BlocStatus.success) {
          return SafeArea(
            child: ListView.separated(
              itemCount: notifications.length,
              separatorBuilder: (context, index) => Gap(8.h),
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return badges.Badge(
                  showBadge: !(notification.viewed ?? true),
                  position: badges.BadgePosition.topEnd(top: 0, end: 0),
                  badgeContent: const SizedBox(height: 5, width: 5),
                  child: GestureDetector(
                    onTap: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return CupertinoActionSheet(
                            title: Text(notification.title ?? ''),
                            message: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(notification.body ?? 'Maʼlumot yoʻq'),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Yuborilgan sana: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text(notification.date ?? 'No Date'),
                                  ],
                                )
                              ],
                            ),
                            cancelButton: CupertinoActionSheetAction(
                              onPressed: () => Navigator.pop(context, true),
                              isDestructiveAction: true,
                              child: const Text('Yopish'),
                            ),
                          );
                        },
                      ).then((value) {
                        if (context.mounted && value == true) {
                          context.read<NotificationBloc>().add(ShowNotification(notification,tabController.index+1));
                        }
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                      elevation: 5,
                      color: Colors.grey.shade300,
                      child: Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(notification.title ?? "", style: AppTheme.data.textTheme.titleLarge),
                            const Divider(),
                            Text(
                              notification.body ?? "",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: AppTheme.data.textTheme.labelSmall,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                notification.date ?? "",
                                style: AppTheme.data.textTheme.labelLarge,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }

}
