import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/dto/models/home/profile/weight_height_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/home/profile/weight_height/weight_height_bloc.dart';
import '../components/create_weight_dialog.dart';
import '../components/graphic.dart';
import '../components/weight_height_table.dart';

class WeightHeightPage extends StatelessWidget {
  const WeightHeightPage({super.key});

  @override
  Widget build(BuildContext context) {
    var variableState = context.watch<WeightHeightBloc>().state;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(variableState.weightHeightEnum == WeightHeightEnum.height ? "Bo'y" : "Vazn", style: const TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: InkWell(
              borderRadius: BorderRadius.circular(8.r),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => WeightHeightBloc()..add(WeightHeightEnumEvent(weightHeightEnum: variableState.weightHeightEnum)),
                        child: const CreateWeightDialog(),
                      );
                    }).then((value) {
                  if (value == true&&context.mounted) {
                    context.read<WeightHeightBloc>().add(GetWeightHeightEvent(weightHeightEnum: variableState.weightHeightEnum));
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(color: AppTheme.colors.primary, borderRadius: BorderRadius.circular(8.r)),
                child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: Icon(
                    Icons.add,
                    color: AppTheme.colors.secondary,
                    size: 25.w,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: BlocConsumer<WeightHeightBloc, WeightHeightState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.status == BlocStatus.success) {
              return SafeArea(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.4.sh,
                      child: WeightHeightTable(
                        data: state.weightHeightList ?? [],
                        weightHeightEnum: state.weightHeightEnum,
                      ),
                    ),
                    //   const Spacer(),
                    SizedBox(
                      height: 0.35.sh,
                      child: Visibility(
                        visible: (state.weightHeightList ?? []).length > 2,
                        child: WeightGraph(data: (state.weightHeightList ?? []).reversed.toList()),
                      ),
                    ),
                  ],
                ),
              ));
            } else if (state.status == BlocStatus.loading) {
              return const Center(
                child: CircularIndicator(),
              );
            }else if (state.status == BlocStatus.empty) {
              return const EmptyPage();
            } else {
              return ErrorPage(
                error: state.errorMessage?.isEmpty ?? true ? 'Ko`zda tutilmagan xatolik' : state.errorMessage ?? '',
                onPressed: () {},
              );
            }
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Visibility(
        visible: variableState.status == BlocStatus.error,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: MainButton(
            onPressed: () {},
            text: 'Qayta yuklash',
          ),
        ),
      ),
    );
  }

  bool checkStatus(List<WeightHeightResponse> list) {
    for (int i = 0; i < list.length; i++) {
      var now = DateTime.now();
      var dateString = list[i].date ?? '';

      var dateParts = dateString.split('.');
      if (dateParts.length == 3) {
        var day = int.parse(dateParts[0]);
        var month = int.parse(dateParts[1]);
        var year = int.parse(dateParts[2]);
        var time = DateTime(year, month, day);

        if (now.year == time.year && now.month == time.month) {
          return false;
        }
      }
    }
    return true;
  }
}
