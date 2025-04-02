import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/pages/tariff/components/tariff_item.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/material.dart';

class AllTariffPage extends StatelessWidget {
  AllTariffPage({super.key});

  final List<Map<String, dynamic>> subscriptions = [
    {
      "title": "12 oylik",
      "discount": "-27%",
      "monthlyPrice": "457 500",
      "months": 12,
      "totalPrice": "5 490 000",
      "oldPrice": "7 590 000",
      "color": Colors.blue,
    },
    {
      "title": "6 oylik",
      "discount": "-4%",
      "monthlyPrice": "798 334",
      "months": 6,
      "totalPrice": "4 790 000",
      "oldPrice": "4 990 000",
      "color": Colors.pink,
    },
    {
      "title": "3 oylik",
      "discount": "-5%",
      "monthlyPrice": "3 390 000",
      "months": 1,
      "totalPrice": "3 390 000",
      "oldPrice": "3 590 000",
      "color": Colors.green,
    },
    {
      "title": "24 oylik",
      "discount": "-11%",
      "monthlyPrice": "882 500",
      "months": 12,
      "totalPrice": "10 590 000",
      "oldPrice": "11 990 000",
      "color": Colors.orange,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('profile.definition'.tr()),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: subscriptions.length,
        itemBuilder: (context, index) {
          final item = subscriptions[index];
          return TariffItem(
            item: item,
            onPressed: () {
              context.push(
                "${Routes.root.path}${Routes.tariff.path}${Routes.allTariff.path}${Routes.tariffDetail.path}",
              );
            },
          );
        },
      ),
    );
  }
}
