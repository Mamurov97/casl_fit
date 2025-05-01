import 'dart:ui';

import 'package:casl_fit/application/app_manager/app_manager_cubit.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/dto/models/home/profile/profile_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/pages/profile/components/info_card.dart';
import 'package:casl_fit/presentation/pages/profile/components/logout_button.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../../application/profile/weight_height/weight_height_bloc.dart';
import '../../../infrastructure/services/shared_service.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var maskFormatter = MaskTextInputFormatter(
    mask: '+### (##) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: '+998',
    type: MaskAutoCompletionType.lazy,
  );
  int expandedIndex = -1;
  late SharedPrefService pref;
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  void initState() {
    getPref();

    super.initState();
  }

  void getPref() async {
    pref = await SharedPrefService.initialize();
  }

  @override
  Widget build(BuildContext context) {
    AppManagerCubit.context = context;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('profile.profile'.tr(), style: const TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: () {
          context.read<ProfileBloc>().add(GetUserBalance());
          context.read<ProfileBloc>().add(GetProfileDataEvent());
          _refreshController.refreshCompleted();
        },
        onLoading: () {
          _refreshController.loadComplete();
        },
        child: Stack(
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
              child: BlocConsumer<ProfileBloc, ProfileState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state.status == BlocStatus.loading) {
                    return const CircularIndicator();
                  } else if (state.status == BlocStatus.error) {
                    return ErrorPage(
                        onPressed: () {
                          context.read<ProfileBloc>().add(GetProfileDataEvent());
                        },
                        error: state.errorMessage.toString());
                  } else if (state.status == BlocStatus.success) {
                    ProfileResponse data = state.profileResponse ?? ProfileResponse();
                    return SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          /*   Container(
                            height: 80.h,
                            width: 80.w,
                            decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: AppTheme.colors.primary,
                                  width: 2.0,
                                ),
                              ),

                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Icon(
                                CupertinoIcons.person_alt,
                                size: 50.w,
                              ),
                            ),
                          ),
                          Gap(8.h),
                          Text(
                            data.name ?? "",
                            textAlign: TextAlign.start,
                            maxLines: 3,
                            style: AppTheme.data.textTheme.titleMedium!.copyWith(color: AppTheme.colors.white),
                          ),
                          Gap(4.h),
                          Text(
                            maskFormatter.maskText("+998${data.tel}" ?? ""),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),*/
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                            margin: EdgeInsets.only(bottom: 20.h),
                            decoration: BoxDecoration(color: AppTheme.colors.secondary, borderRadius: BorderRadius.circular(16.r)),
                            child: IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 80.h,
                                    width: 80.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Icon(
                                        CupertinoIcons.person_alt,
                                        size: 60.w,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            data.name ?? "",
                                            textAlign: TextAlign.start,
                                            maxLines: 3,
                                            style: AppTheme.data.textTheme.titleMedium!.copyWith(color: AppTheme.colors.primary),
                                          ),
                                        ),
                                        Text(
                                          maskFormatter.maskText("+998${data.tel??'xxxxxxx'}"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              InfoItem(
                                type: 'kg',
                                text: "Vazn",
                                icon: AppIcons.weight,
                                value: (state.profileResponse?.weight ?? 0).toString(),
                                onPressed: () {
                                  context.push("${Routes.root.path}${Routes.profile.path}${Routes.weightHeight.path}", extra: WeightHeightEnum.weight).then((value) {
                                    if (context.mounted) {
                                      context.read<ProfileBloc>().add(GetProfileDataEvent());
                                    }
                                  });
                                },
                              ),
                              InfoItem(
                                type: 'sm',
                                text: "Bo'y",
                                icon: AppIcons.height,
                                value: (state.profileResponse?.height ?? 0).toString(),
                                onPressed: () {
                                  context.push("${Routes.root.path}${Routes.profile.path}${Routes.weightHeight.path}", extra: WeightHeightEnum.height).then((value) {
                                    if (context.mounted) {
                                      context.read<ProfileBloc>().add(GetProfileDataEvent());
                                    }
                                  });
                                },
                              ),
                              InfoItem(
                                type: 'yosh',
                                text: "Yosh",
                                icon: AppIcons.age,
                                value: (state.profileResponse?.age ?? 0).toString(),
                              ),
                            ],
                          ),
                          Gap(20.h),
                          //   Spacer(),
                          Container(
                            width: 1.sw,
                            decoration: BoxDecoration(
                              color: AppTheme.colors.secondary,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    AppIcons.balance,
                                    height: 16.sp,
                                    colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn), // Replace with AppTheme.colors.primary
                                  ),
                                  Gap(8.h),
                                  Text("Balans", style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.white)),
                                  const Spacer(),
                                  Text(
                                    "${formatMoney(state.balance)} so'm",
                                    style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.primary),
                                  )
                                ],
                              ),
                            ),
                          ),
                          /*CustomProfileOption(
                            icon: AppIcons.profile,
                            title: 'Profilni tahrirlash',
                            onTap: () {},
                          ),
                          CustomProfileOption(
                            icon: AppIcons.notification,
                            title: 'Bildirishnomalar ',
                            onTap: () {},
                          ),
                          CustomProfileOption(
                            icon: AppIcons.settings,
                            title: 'Sozlamalar',
                            onTap: () {},
                          ),*/
                        ],
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: LogoutButton(),
          );
        },
      ),
    );
  }

  Widget infoCard(String title, String value) {
    return Column(
      children: [
        Text(title, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 5),
        Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
String formatMoney(dynamic value) {
  if (value == null) return "0";

  num number;

  if (value is String) {
    number = num.tryParse(value) ?? 0;
  } else if (value is num) {
    number = value;
  } else {
    return "0";
  }

  return NumberFormat("#,##0", "uz_UZ").format(number);
}