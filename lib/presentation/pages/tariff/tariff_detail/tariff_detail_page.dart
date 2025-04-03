import 'package:casl_fit/infrastructure/dto/models/tariff/tariff_model.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';

import '../components/tariff_item.dart';

class TariffDetailPage extends StatelessWidget {
  const TariffDetailPage({super.key, required this.model});

  final TariffModel model;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> abonementInfo = [
      {"label": "Davomiyligi", "value": "${model.monthlyLimit} oy"},
      {"label": "Tashrif kuni ", "value": "${model.dailyLimit} marta"},
    ];

    final List<Map<String, dynamic>> narxInfo = [
      {
        "label": "Narxi",
        "value": "${NumberFormat("#,###", "uz_UZ").format(model.price ?? 0).replaceAll(",", " ")} so'm",
      },
      /* {"label": "Chegirma", "value": "-1 000 000 so‘m", "color": Colors.blue},
      {"label": "Summa", "value": "6 590 000 so‘m"},
      {"label": "Qo‘shimcha to‘lov", "value": "500 000 so‘m", "color": Colors.red},
      {"label": "Jami", "value": "7 090 000 so‘m"},*/
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Tarif haqida'.tr(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          children: [
            TariffItem(
              isArrow: false,
              item: model,
              onPressed: () {},
            ),
            Gap(12.h),
            Expanded(
              child: ListView(
                children: [
                  sectionTitle("Davomiyligi"),
                  ...abonementInfo.map((item) => infoRow(item["label"]!, item["value"]!)),
                  SizedBox(height: 18.h),
                  sectionTitle("Narxi"),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: narxInfo.length,
                    itemBuilder: (context, index) {
                      final item = narxInfo[index];
                      return infoRow(item["label"]!, item["value"]!, color: item["color"] ?? Colors.white);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Widget infoRow(String label, String value, {Color color = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16, color: Colors.grey)),
          Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: color)),
        ],
      ),
    );
  }
}
