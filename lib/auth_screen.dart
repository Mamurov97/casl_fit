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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 64.0),
                  Row(
                    children: [
                      Text(
                        "Sign up",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.brown.withOpacity(0.5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 32.0).copyWith(bottom: 64.0),
                    child: Column(
                      children: [
                        CustomTextField(hintText: 'Name'),
                        const SizedBox(height: 4),
                        CustomTextField(hintText: "Email"),
                        const SizedBox(height: 4),
                        CustomTextField(hintText: "Contact no."),
                        const SizedBox(height: 4),
                        CustomTextField(hintText: "Password", isPassword: true),
                        const SizedBox(height: 32.0),
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



