import 'dart:ui';

import 'package:badges/badges.dart' as badges;
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

class _NotificationPageState extends State<NotificationPage> {
  @override
  void initState() {
    super.initState();
    context.read<NotificationBloc>().add(const GetNotifications());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Bildirishnomalar", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.read<NotificationBloc>().add(const ReadAllNotifications());
            },
            icon: SvgPicture.asset(
              AppIcons.readAll,
              height: 25,
              width: 25,
              colorFilter: ColorFilter.mode(AppTheme.colors.white, BlendMode.srcIn),
            ),
          ),
        ],
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
          BlocBuilder<NotificationBloc, NotificationState>(
            builder: (context, state) {
              if (state.statusGet == BlocStatus.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.statusGet == BlocStatus.error) {
                return Center(child: Text(state.errorMessage.toString()));
              }
              if (state.statusGet == BlocStatus.empty) {
                return const Center(child: Text("No notifications"));
              }
              if (state.statusGet == BlocStatus.success) {
                return ListView.separated(
                  itemCount: state.notifications.length,
                  separatorBuilder: (context, index) => Gap(8.h),
                  itemBuilder: (context, index) {
                    return badges.Badge(
                      showBadge: !(state.notifications[index].viewed??true),
                      position: badges.BadgePosition.topEnd(top: 0, end: 0),
                      badgeContent: const SizedBox(height: 5, width: 5),
                      child: GestureDetector(
                        onTap: () {
                          final notification = state.notifications[index];
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext context) {
                              return CupertinoActionSheet(
                                title: Text(notification.title ?? '', style: AppTheme.data.textTheme.displayLarge!.copyWith(fontSize: 16)),
                                message: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(notification.body ?? 'Ma\'lumot yo\'q', style: AppTheme.data.textTheme.bodyMedium),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Text(
                                          "Yuborilgan sana: ",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Text(notification.date ?? "No Date"),
                                      ],
                                    ),
                                  ],
                                ),
                                cancelButton: CupertinoActionSheetAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  isDefaultAction: false,
                                  isDestructiveAction: true,
                                  child: const Text("Yopish"),
                                ),
                              );
                            },
                          ).then((v){
                            if(context.mounted){
                              context.read<NotificationBloc>().add(ShowNotification(notification));
                            }
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                          elevation: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(8.w, 8.h, 0, 0),
                                child: Text(state.notifications[index].title ?? "", style: AppTheme.data.textTheme.titleLarge),
                              ),
                              const Divider(),
                              Container(
                                padding: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                                height: 30.h,
                                child: Text(
                                  state.notifications[index].body ?? "",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTheme.data.textTheme.labelSmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8.w, 0, 8.w, 8.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [Text("20.10.2025", style: AppTheme.data.textTheme.labelLarge)],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
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
