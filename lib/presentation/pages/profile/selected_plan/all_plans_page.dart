import 'package:casl_fit/infrastructure/dto/models/home/profile/profile_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/home/profile/profile_bloc.dart';
import '../widgets/accordion.dart';

class AllPlanPage extends StatelessWidget {
  const AllPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          var profileResponse = state.plans?.map((data)=> Tarif(tarif: data.name,boshlanishVaqt: data.vremyaLimitS?.split("T")[0],tugashVaqt: data.vremyaLimitS?.split("T")[0],qoldiq: int.tryParse(data.kunlikLimit.toString())) ).toList();
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate((profileResponse?? []).length, (index) {
                    var list = profileResponse?? [];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: CustomExpansionTileWidget(
                        title: list[index].tarif ?? "",
                        isExpanded: true,
                        onExpand: () {},
                        children: [DefinitionLimitsCard(definition: list[index])],
                      ),
                    );
                  }),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
