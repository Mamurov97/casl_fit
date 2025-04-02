import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../application/home/profile/profile_bloc.dart';
import '../../routes/entity/routes.dart';

class TariffPage extends StatelessWidget {
  const TariffPage({super.key});

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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppTheme.colors.secondary.withValues(alpha: 0.8),
                  ),
                ),
                Gap(24.h),
                MenuButton(
                  title: "Barcha tariflar",
                  icon: AppIcons.status,
                  onPressed: () {
                    context.push(
                      "${Routes.root.path}${Routes.tariff.path}${Routes.allTariff.path}",
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
