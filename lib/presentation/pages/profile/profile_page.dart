import 'package:casl_fit/application/app_manager/app_manager_cubit.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/dto/models/home/profile/profile_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/pages/profile/widgets/accordion.dart';
import 'package:casl_fit/presentation/components/buttons/menu_button.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/profile/profile_bloc.dart';
import '../../../infrastructure/services/shared_service.dart';
import '../../components/dialogs/exit_dialog.dart';

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
    AppManagerCubit.context=context;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('profile.profile'.tr(), style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.status == BlocStatus.loading) {
              return const Center(child: CircularProgressIndicator());
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
                    if (data.balans != null)
                      Text(
                        "Balans: ${NumberFormat("#,###", "uz_UZ").format(data.balans ?? 0).replaceAll(",", " ")} so'm",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                    SizedBox(height: 4.h),
                    Text(
                      data.tel ?? "",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 36.h),
                    MenuButton(
                      isExpanded: state.isDefinitionExpanded ?? false,
                      title: 'profile.definition'.tr(),
                      icon: AppIcons.profile,
                      onSwitchChanged: (value) {},
                      onPressed: () {
                        context.push(
                          "${Routes.root.path}${Routes.profile.path}${Routes.selectedTariffTab.path}",
                          extra: state.profileResponse ?? ProfileResponse(),
                        );
                      },
                    ),
                    if (state.isDefinitionExpanded ?? false)
                      Wrap(
                        children: List.generate(state.profileResponse?.tarif?.length ?? 0, (index) {
                          var list = state.profileResponse?.tarif ?? [];
                          return Padding(
                            padding: EdgeInsets.only(left: 8.w, bottom: 4.h),
                            child: CustomExpansionTileWidget(
                              title: list[index].tarif ?? "",
                              isExpanded: expandedIndex == index,
                              onExpand: () {
                                expandedIndex = (expandedIndex == index) ? -1 : index;
                              },
                              children: [DefinitionTable(definitions: list, index: index)],
                            ),
                          );
                        }),
                      ),
                    MenuButton(
                      title: 'profile.edit_profile'.tr(),
                      icon: AppIcons.profile,
                      onPressed: () {},
                    ),
                    MenuButton(
                      title: 'profile.notification'.tr(),
                      icon: AppIcons.notification,
                      switchValue: true,
                      hasSwitch: true,
                      onSwitchChanged: (value) {},
                      onPressed: () {},
                    ),
                    MenuButton(
                      title: "profile.setting".tr(),
                      icon: AppIcons.settings,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.colors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (contextD) => ExitDialog(
                            onPressed: () async {
                              var passCode = pref.passcode;
                              pref.clear();
                              pref.setPasscode(passCode);
                              pref.setAuthStatus(true);
                              context.go(Routes.signIn.path);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              height: 16.sp,
                              AppIcons.logout,
                              colorFilter: ColorFilter.mode(AppTheme.colors.secondary, BlendMode.srcIn),
                            ),
                            const SizedBox(width: 8),
                            Text('profile.logout'.tr(), style: TextStyle(color: AppTheme.colors.secondary)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return const SizedBox();
          },
        ),
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
