import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthDialogs {
  static Future<void> showRegisterDialog(BuildContext context, {required VoidCallback onRegister}) {
    return showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(tr("sign_in.register_dialog.attention")),
          content: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(tr("sign_in.register_dialog.content")),
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.of(context).pop(),
              isDestructiveAction: true,
              child: Text(tr("sign_in.register_dialog.back")),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
                onRegister();
              },
              child: Text(tr("sign_in.register_dialog.register")),
            ),
          ],
        );
      },
    );
  }

  static Future<void> showNotFoundDialog(BuildContext context) {
    return showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(tr("sign_in.not_found_dialog.attention")),
          content: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(tr("sign_in.not_found_dialog.content")),
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.of(context).pop(),
              isDestructiveAction: true,
              child: Text(tr("sign_in.not_found_dialog.back")),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
                showContactAsDialog(context);
              },
              child: Text(tr("sign_in.not_found_dialog.contact")),
            ),
          ],
        );
      },
    );
  }

  static Future<void> showContactAsDialog(BuildContext context) {
    return showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(tr("sign_in.contact_dialog.attention")),
          content: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(tr("sign_in.contact_dialog.content")),
          ),
          actions: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      final Uri phoneUri = Uri(
                        scheme: 'tel',
                        path: '+998993572974',
                      );
                      if (await canLaunchUrl(phoneUri)) {
                        await launchUrl(phoneUri);
                      } else {
                        Toast.showErrorToast(message: 'errors.unknown'.tr());
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(CupertinoIcons.phone, color: CupertinoColors.activeGreen),
                          const SizedBox(width: 8),
                          Text(
                            tr("sign_in.contact_dialog.phone"),
                            style: const TextStyle(color: CupertinoColors.activeBlue, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(color: Colors.black, width: 0.15, height: 40),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                      final Uri telegramUri = Uri.parse('https://t.me/Mobil_Support');
                      if (await canLaunchUrl(telegramUri)) {
                        await launchUrl(telegramUri);
                      } else {
                        Toast.showErrorToast(message: 'errors.unknown'.tr());
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(FontAwesomeIcons.telegram, color: CupertinoColors.activeBlue),
                          const SizedBox(width: 8),
                          Text(
                            tr("sign_in.contact_dialog.telegram"),
                            style: const TextStyle(color: CupertinoColors.activeBlue, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CupertinoDialogAction(
              onPressed: () => Navigator.of(context).pop(),
              isDestructiveAction: true,
              child: Text(tr("sign_in.contact_dialog.back")),
            ),
          ],
        );
      },
    );
  }
}
