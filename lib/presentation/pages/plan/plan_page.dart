import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../application/home/profile/profile_bloc.dart';
import '../../routes/entity/routes.dart';
import 'widgets/plan_item.dart';

class PlanPage extends StatelessWidget {
  const PlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('profile.definition'.tr()),
      ),
      backgroundColor: Colors.black,
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(12.h),
            child: Column(
              children: [
                Container(
                  height: 0.27.sh,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: AppTheme.colors.secondary.withOpacity(0.8)),
                ),
                Gap(24.h),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: AppTheme.colors.gray,
                        width: 0.8,
                      ),
                    ),
                    child: PlanItem(
                      title: "Barcha tariflar",
                      icon: AppIcons.status,
                      onPressed: () {
                        context.push(
                          "${Routes.root.path}${Routes.selectedPlan.path}${Routes.planAll.path}",
                        );
                      },
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}

/* Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate((state.profileResponse?.tarif ?? []).length, (index) {
                    var list = state.profileResponse?.tarif ?? [];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: CustomExpansionTileWidget(
                        title: list[index].tarif ?? "",
                        isExpanded: true,
                        onExpand: () {
                        },
                        children: [DefinitionLimitsCard(definition: list[index])],
                      ),
                    );
                  }),
                ),
              ),
            ),
          );*/
