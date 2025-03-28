import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:casl_fit/infrastructure/common/platform_info.dart';

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget child;
    if (!PlatformInfo.isIOS) {
      child = SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(56, 131, 146, 1)),
          ),
        ),
      );
    } else {
      child = SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Center(
          child: CupertinoActivityIndicator(),
        ),
      );
    }

    return Material(
      color: Colors.transparent,
      child: child,
    );
  }
}
