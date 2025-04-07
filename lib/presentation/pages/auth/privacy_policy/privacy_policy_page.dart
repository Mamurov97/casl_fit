import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../components/loadings/circular_indicator.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  late final WebViewController controller;
  bool isProgress = false;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {
            isProgress = false;
            setState(() {});
          },
          onPageFinished: (String url) {
            isProgress = true;
            setState(() {});
          },
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(Uri.parse('https://www.freeprivacypolicy.com/live/95e33a0e-a1e2-48c3-b74e-777e8ad87620'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Privacy policy"),
        backgroundColor: Colors.transparent,
      ),
      body: isProgress ?  WebViewWidget(controller: controller):const CircularIndicator() ,
    );
  }
}
