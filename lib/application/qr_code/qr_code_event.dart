part of 'qr_code_bloc.dart';

class QrCodeEvent {}

class GetQrCodeTokenEvent extends QrCodeEvent {}

class StartQrCodeTimerEvent extends QrCodeEvent {
  final int seconds;

  StartQrCodeTimerEvent(this.seconds);
}

class UpdateQrCodeTimerEvent extends QrCodeEvent {
  final int remainingSeconds;

  UpdateQrCodeTimerEvent({required this.remainingSeconds});
}