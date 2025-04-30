import 'dart:ui';

import 'package:casl_fit/infrastructure/dto/models/tariff/tariff_model.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';
import '../components/tariff_item.dart';

class TariffDetailPage extends StatelessWidget {
  const TariffDetailPage({super.key, required this.model});

  final Data model;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> abonementInfo = [
      {"label": "Davomiyligi", "value": "${model.monthlyLimit} oy"},
      {"label": "Tashrif kuni ", "value": (model.dailyLimit ?? 0) > 29 ? "Har kuni" : "Oyda ${model.dailyLimit} kun"},
      {"label": "Tashrif vaqti ", "value": "${extractHourMinute(model.limitTimeFrom ?? "")} - ${extractHourMinute(model.limitTimeTo ?? "")}"},
      {
        "label": "Narxi",
        "value": "${NumberFormat("#,###", "uz_UZ").format(model.price ?? 0).replaceAll(",", " ")} so'm",
      }
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Tarif haqida'.tr(),
        ),
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
          Padding(
            padding: EdgeInsets.all(12.r),
            child: SafeArea(
              child: Column(
                children: [
                  TariffItem(
                    isArrow: true,
                    item: model,
                    onPressed: () {},
                  ),
                  Gap(12.h),
                  Expanded(
                    child: ListView(
                      children: [
                        // sectionTitle("Davomiyligi"),
                        //  ...abonementInfo.map((item) => infoRow(item["label"]!, item["value"]!)),
                        Container(
                          decoration: BoxDecoration(color: AppTheme.colors.secondary, borderRadius: BorderRadius.circular(8.r)),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: abonementInfo.length,
                            itemBuilder: (context, index) {
                              final item = abonementInfo[index];
                              return infoRow(item["label"]!, item["value"]!);
                            },
                          ),
                        ),
                        /*      SizedBox(height: 18.h),
                        sectionTitle("Narxi"),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: narxInfo.length,
                          itemBuilder: (context, index) {
                            final item = narxInfo[index];
                            return infoRow(item["label"]!, item["value"]!, color: item["color"] ?? Colors.white);
                          },
                        ),*/
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Widget infoRow(String label, String value, {Color color = Colors.white}) {
    return Container(
      decoration: BoxDecoration(color: AppTheme.colors.secondary, borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: const TextStyle(fontSize: 16, color: Colors.grey)),
            Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: color)),
          ],
        ),
      ),
    );
  }
}
