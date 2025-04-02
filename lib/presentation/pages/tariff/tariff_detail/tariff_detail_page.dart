import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';

class TariffDetailPage extends StatefulWidget {
  const TariffDetailPage({super.key});

  @override
  State<TariffDetailPage> createState() => _TariffDetailPageState();
}

class _TariffDetailPageState extends State<TariffDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Tarif sotib olish'.tr()),
      ),
    );
  }
}
