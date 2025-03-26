import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/gym_background.jpg', fit: BoxFit.cover, alignment: Alignment.topCenter),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 64.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white.withOpacity(0.8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
                    child: Column(
                      children: [
                        QrImageView(
                          data: 'Lorem ipsum sit amit data mata sata qata ',
                          version: QrVersions.auto,
                          size: 320,
                          gapless: false,
                        )
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
}
