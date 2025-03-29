import 'package:casl_fit/infrastructure/dto/models/home/qr_code/response/qr_code_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../application/home/qr_code/qr_code_bloc.dart';
import '../../../utils/utils.dart';
import '../../assets/theme/app_theme.dart';

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
       /* leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),*/
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BlocConsumer<QrCodeBloc, QrCodeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/images/gym_background.jpg', fit: BoxFit.cover, alignment: Alignment.topCenter),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (state.status == Status.success)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.white.withOpacity(0.9),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
                          child: Column(
                            children: [
                              QrImageView(
                                data: (state.qrCodeResponse ?? QrCodeResponse()).qrCodeToken.toString(),
                                version: QrVersions.auto,
                                size: 320,
                                gapless: false,
                              )
                            ],
                          ),
                        )
                      else if (state.status == Status.loading)
                        Center(
                          child: CircularProgressIndicator(
                            color: AppTheme.colors.primary,
                          ),
                        )
                      else const SizedBox()
                    ],
                  ),
                )

              ),
            ],
          );
        },
      ),
    );
  }
}
