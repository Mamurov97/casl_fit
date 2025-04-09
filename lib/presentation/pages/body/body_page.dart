import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/pages/body/pages/training_page.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interactable_svg/interactable_svg/src/models/region.dart';
import 'package:interactable_svg/interactable_svg/src/widgets/interactable_svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  Region? selectedRegion;
  final Map<String, String> regionInfo = {
    "body-path": "Bosh qismi — Asosiy boshqaruv markazi.",
    // "chest": "Ko‘krak — yurak va o‘pka joylashgan.",
    // "left_arm": "Chap qo‘l — ushlash va harakat uchun.",
    // "right_leg": "O‘ng oyoq — yurish va harakat uchun.",
    // keyin sen `id` larni `SVG` da nomlasang, shu yerga qo‘shib chiqamiz
  };

  /// 🔑 To'g'ri joyda e'lon qilingan GlobalKey
  final GlobalKey<InteractableSvgState> mapKey = GlobalKey<InteractableSvgState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppTheme.colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('body.body'.tr(), style: const TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: InteractiveViewer(
          scaleEnabled: true,
          panEnabled: true,
          constrained: true,
          child: InteractableSvg(
            svgAddress: "assets/images/body.svg",
            onChanged: (region) {
              setState(() {
                selectedRegion = region;
                if (kDebugMode) {
                  print(selectedRegion?.id ?? "");
                  print(selectedRegion?.path ?? "");
                  print(selectedRegion?.name ?? "");
                }
                pushWithoutNavBar(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const TrainingPage(
                              data: {"name": "Shoulders"},
                            )));
              });
            },
            width: double.infinity,
            height: double.infinity,
            toggleEnable: true,
            isMultiSelectable: false,
            dotColor: Colors.black,
            strokeColor: Colors.blue,
            centerDotEnable: true,
            centerTextEnable: true,
            strokeWidth: 2.0,
            centerTextStyle: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        )

        // body: SvgPicture.asset('assets/images/body.svg'),
        );
  }
}
