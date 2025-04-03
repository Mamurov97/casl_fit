enum ToastType { success, info, warning, failed }

class MyToastModel {
  final String message;
  final ToastType type;

  MyToastModel({required this.message, required this.type});
}
