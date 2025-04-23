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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                            margin: EdgeInsets.only(bottom: 15.h),
                            decoration: BoxDecoration(color: AppTheme.colors.secondary, borderRadius: BorderRadius.circular(16.r)),
                            child: IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 80.h,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Icon(
                                        CupertinoIcons.person_alt,
                                        size: 80.w,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
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
                                          maskFormatter.maskText("+998${data.tel ?? "xxxxxxx"}"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Gap(5.h),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          const SizedBox(height: 20),
                          LogoutButton(prefService: pref),
                        ],
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.status == BlocStatus.error
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: LogoutButton(prefService: pref),
                )
              : const SizedBox();
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
