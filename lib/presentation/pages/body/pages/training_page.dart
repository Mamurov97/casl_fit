import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/pages/body/components/training_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Icon(
          CupertinoIcons.star_fill,
          color: AppTheme.colors.primary,
          size: 24.sp,
        ),
        centerTitle: true,
      ),
      body: NestedScrollView(
        // Define the header slivers
        headerSliverBuilder: (context, innerBoxScrolled) {
          return [
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Shoulders",
                    maxLines: 2,
                    style: AppTheme.data.textTheme.bodyMedium!.copyWith(color: AppTheme.colors.white),
                  )
                ],
              ),
            ),
          ];
        },
        body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          physics: const BouncingScrollPhysics(),
          itemCount: 15,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (BuildContext context, int index) {
            return TrainingItem();
          },
        ),
      ),
    );
  }
}
