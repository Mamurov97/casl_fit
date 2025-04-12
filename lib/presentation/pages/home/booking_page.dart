import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';

import 'components/create_booking_dialog.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Vaqt olish"),
      ),
      body:Container() /*ListView.builder(itemBuilder: (context, index) {
        return const Column(
          children: [],
        );
      })*/,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.colors.primary,
        shape: const CircleBorder(),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return
                  const CreateBookingDialog();

              }).then((value) {
            if (value == true&&context.mounted) {
              }
          });

        },
        child: Icon(Icons.add, color: AppTheme.colors.secondary),
      ),
    );
  }
}
