import 'package:casl_fit/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import 'auth_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Row(
                    children: [
                      const Text(
                        "Hi !",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.brown.withOpacity(0.5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 32.0).copyWith(bottom: 64.0),
                    child: Column(
                      children: [
                        CustomTextField(hintText: "+998"),
                        const SizedBox(height: 4),
                        CustomTextField(hintText: "Password"),
                        const SizedBox(height: 4),
                        SizedBox(
                          width: double.infinity,
                          height: 52.0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text("Continue", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const AuthScreen()),
                                );
                              },
                              child: const Text(
                                "Don't have an account? Sign up",
                                style: TextStyle(color: Colors.white,fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            const Text(
                              "Forgot your password ?",
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
