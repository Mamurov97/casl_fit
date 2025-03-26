import 'package:casl_fit/qr_screen.dart';
import 'package:casl_fit/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'auth_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
      mask: '(##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    return Scaffold(
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
                      color: Color(0xFF313230).withOpacity(0.6),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 32.0).copyWith(bottom: 64.0),
                    child: Column(
                      children: [
                        CustomTextField(hintText:"",format: maskFormatter),
                        const SizedBox(height: 8),
                        CustomTextField(hintText: "Parol kiriting",isPassword: true,),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          height: 52.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const QrScreen()),
                              );

                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFD3FF36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text("Davom etish", style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const AuthScreen()),
                                );
                              },
                              child: const Text(
                                "Ro'yxatdan o'ting",
                                style: TextStyle(color: Color(0xFFD3FF36),fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            const Text(
                              "Parolni unutdingizmi",
                              style: TextStyle(color: Colors.white,fontSize: 14),
                            ),
                          ],
                        ),
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
