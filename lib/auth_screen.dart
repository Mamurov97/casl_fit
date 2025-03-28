import 'package:casl_fit/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
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
          Image.asset('assets/images/gym_background.jpg', fit: BoxFit.cover, alignment: Alignment.topCenter),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 64.0),

                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xFF313230).withValues(alpha: 0.6),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 32.0).copyWith(bottom: 64.0),
                    child: Column(
                      children: [
                        const CustomTextField(hintText: 'Ism'),
                        const SizedBox(height: 4),
                        const CustomTextField(hintText: "Email"),
                        const SizedBox(height: 4),
                        const CustomTextField(hintText: "Tel. raqam"),
                        const SizedBox(height: 4),
                        const CustomTextField(hintText: "Parol", isPassword: true),
                        const SizedBox(height: 32.0),
                        SizedBox(
                          width: double.infinity,
                          height: 52.0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFD3FF36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text("Davom etish", style: TextStyle(color: Colors.black)),
                          ),
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



