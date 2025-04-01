import 'package:casl_fit/infrastructure/dto/models/home/profile/profile_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/accordion.dart';

class SelectedPlanPage extends StatelessWidget {
  final ProfileResponse? profileResponse;

  const SelectedPlanPage({super.key, required this.profileResponse});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 8.h),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate((profileResponse?.tarif ?? []).length, (index) {
                var list = profileResponse?.tarif ?? [];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: CustomExpansionTileWidget(
                    title: list[index].tarif ?? "",
                    isExpanded: true,
                    onExpand: () {
              //        expandedIndex = (expandedIndex == index) ? -1 : index;
                    },
                    children: [DefinitionLimitsCard(definition: list[index])],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
