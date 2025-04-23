import 'dart:ui';

import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/dto/models/home/qr_code/response/qr_code_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../application/qr_code/qr_code_bloc.dart';


class QrPage extends StatefulWidget {
  const QrPage({super.key});

  @override
  State<QrPage> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: BlocBuilder<QrCodeBloc, QrCodeState>(
          builder: (context, state) {
            return Stack(
              fit: StackFit.expand,
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
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Gap(0.35.sh),
                      if (state.status == BlocStatus.success)
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.white.withValues(alpha: 0.9),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  QrImageView(
                                    data: (state.qrCodeResponse ?? QrCodeResponse()).qrCodeToken.toString(),
                                    version: QrVersions.auto,
                                    size: 0.28.sh,
                                    gapless: false,
                                  ),
                                ],
                              ),
                            ),
                            if (state.isExpired)
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                    child: Container(
                                      alignment: Alignment.center,
                                      color: Colors.white.withValues(alpha: 0.6),
                                      child: Text(
                                        "QR kod muddati tugadi",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        )
                      else
                        const SizedBox(),
                    ],
                  ),
                )),
              ],
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: BlocBuilder<QrCodeBloc, QrCodeState>(
          builder: (context, state) {
            int minutes = state.remainingSeconds ~/ 60;
            int seconds = state.remainingSeconds % 60;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
              child: ElevatedButton(
                onPressed: !state.isExpired
                    ? null
                    : () {
                        context.read<QrCodeBloc>().add(GetQrCodeTokenEvent());
                      },
                child: state.status == BlocStatus.loading
                    ? LoadingAnimationWidget.fallingDot(color: AppTheme.colors.black, size: ScreenSize.h36)
                    : Text(
                        state.isExpired ? 'qrcode.get_new_qr'.tr() : "$minutes:${seconds.toString().padLeft(2, '0')}",
                      ),
              ),
            );
            //  : const SizedBox();
          },
        ));
  }
}
