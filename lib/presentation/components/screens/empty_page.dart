import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            'assets/animations/empty.json',
            repeat: false,
            height: 0.3.sh,
          ),
          Text(
            tr('errors.empty'),
            style: AppTheme.data.textTheme.titleLarge!.copyWith(color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}
