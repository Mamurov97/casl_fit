/*import 'package:flutter/material.dart';
import 'dialogs/update_dialog.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key, required this.updateStatus, required this.isUpdate});

  final bool? isUpdate;
  final String updateStatus;

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Material(child: WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        barrierDismissible: widget.updateStatus != 'hard',
        context: context,
        builder: (BuildContext context) => UpdateAppDialog(status: widget.updateStatus),
      );
    }));
  }
}*/
