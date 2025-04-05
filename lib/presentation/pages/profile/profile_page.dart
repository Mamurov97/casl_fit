import 'package:casl_fit/application/app_manager/app_manager_cubit.dart';
import 'package:casl_fit/application/home/profile/weight_height/weight_height_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/dto/models/home/profile/profile_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/pages/profile/components/info_card.dart';
import 'package:casl_fit/presentation/pages/profile/components/logout_button.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/home/profile/profile_bloc.dart';
import '../../../infrastructure/services/shared_service.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('profile.profile'.tr(), style: const TextStyle(color: Colors.white)),
        centerTitle: true,
        /*actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],*/
      ),
      body: Padding(
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
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(AppIcons.home),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      data.name ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.h),
                    // if (data.balans != null)
                    //   Text(
                    //     "Balans: ${NumberFormat("#,###", "uz_UZ").format(data.balans ?? 0).replaceAll(",", " ")} so'm",
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(color: Colors.white, fontSize: 12.sp, fontWeight: FontWeight.w500),
                    //   ),
                    // SizedBox(height: 4.h),
                    Text(
                      data.tel ?? "",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 12.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoItem(
                          type: 'kg',
                          text: "Vazn",
                          icon: AppIcons.weight,
                          value: state.profileResponse?.weight.toString() ?? "0",
                          onPressed: () {
                            context.push("${Routes.root.path}${Routes.profile.path}${Routes.weightHeight.path}", extra: WeightHeightEnum.weight).then((value) {
                              context.read<ProfileBloc>().add(GetProfileDataEvent());
                            });
                          },
                        ),
                        InfoItem(
                          type: 'sm',
                          text: "Bo'y",
                          icon: AppIcons.height,
                          value: state.profileResponse?.height.toString() ?? "0",
                          onPressed: () {
                            context.push("${Routes.root.path}${Routes.profile.path}${Routes.weightHeight.path}", extra: WeightHeightEnum.height).then((value) {
                              context.read<ProfileBloc>().add(GetProfileDataEvent());
                            });
                          },
                        ),
                        InfoItem(
                          type: 'yosh',
                          text: "Yosh",
                          icon: AppIcons.age,
                          value: (state.profileResponse?.age ?? 0).toString(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    // SizedBox(height: 36.h),
                    // MenuButton(
                    //   title: 'profile.edit_profile'.tr(),
                    //   icon: AppIcons.profile,
                    //   onPressed: () {},
                    // ),
                    // MenuButton(
                    //   title: 'profile.notification'.tr(),
                    //   icon: AppIcons.notification,
                    //   switchValue: true,
                    //   hasSwitch: true,
                    //   onSwitchChanged: (value) {},
                    //   onPressed: () {},
                    // ),
                    // MenuButton(
                    //   title: "profile.setting".tr(),
                    //   icon: AppIcons.settings,
                    //   onPressed: () {},
                    // ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.status == BlocStatus.error ?Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: LogoutButton(prefService: pref),
          ):const SizedBox();
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
