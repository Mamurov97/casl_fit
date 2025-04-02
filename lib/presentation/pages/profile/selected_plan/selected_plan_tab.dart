import 'package:casl_fit/application/home/profile/profile_bloc.dart';
import 'package:casl_fit/infrastructure/dto/models/home/profile/profile_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/pages/profile/selected_plan/all_plans_page.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedPlanTab extends StatefulWidget {
  final ProfileResponse profileResponse;

  const SelectedPlanTab({super.key, required this.profileResponse});

  @override
  State<SelectedPlanTab> createState() => _SelectedPlanTabState();
}

class _SelectedPlanTabState extends State<SelectedPlanTab> with TickerProviderStateMixin {
  late TabController tabController;
  bool isNotReload = false;
  String filterKey = "";

  @override
  void initState() {
    tabController = TabController(length: 2, initialIndex: 0, animationDuration: const Duration(seconds: 0), vsync: this);
 //  tabController.addListener(_listenToTabChanges);
    super.initState();
  }

  int tabIndex = 0;

  void _listenToTabChanges() {
    if (tabIndex != tabController.index) {
    //  tabIndex = tabController.index;
     // setState(() {});
    }
  }

  @override
  void dispose() {
    tabController.removeListener(_listenToTabChanges);

    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            context.pop();
          },
        ),
        backgroundColor: Colors.black,
        title: Text('profile.definition'.tr()),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 4.w),
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(color: AppTheme.colors.secondary.withValues(alpha: 0.7), borderRadius: BorderRadius.circular(8.r)),
            child: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.black,
              tabAlignment: TabAlignment.fill,
              physics: const BouncingScrollPhysics(),
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: false,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(color: AppTheme.colors.secondary, borderRadius: BorderRadius.circular(8.r)),
              splashBorderRadius: BorderRadius.circular(8.r),
              controller: tabController,
              onTap: (t) {},
              tabs: [
                Tab(
                    child: Text(
                      "Mening tarifim",
                      style: AppTheme.data.textTheme.titleSmall?.copyWith(fontSize: 14.h, color: Colors.white),
                    )),
                Tab(
                    child: Text(
                      "Barcha tariflar",
                      style: AppTheme.data.textTheme.titleSmall?.copyWith(fontSize: 14.h, color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ),
        ),
        elevation: 0,
      ),
      body: TabBarView(

        controller: tabController,
        children: [
         // SelectedPlanPage(profileResponse: widget.profileResponse),
          BlocProvider(
            create: (context) => ProfileBloc()..add(GetPlansEvent()),
            child: const AllPlanPage(),
          ),
          //  SelectedPlanPage(profileResponse: widget.profileResponse),
        ],
      ),
    );
  }
}
