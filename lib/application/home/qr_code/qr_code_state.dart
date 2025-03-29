part of 'qr_code_bloc.dart';

class QrCodeState {
  final Status? status;
  final String? errorMessage;
  final QrCodeResponse? qrCodeResponse;

  QrCodeState({this.status, this.errorMessage, this.qrCodeResponse});

  QrCodeState copyWith({
    Status? status,
    String? errorMessage,
    QrCodeResponse? qrCodeResponse,
  }) =>
      QrCodeState(
        status: status ?? this.status,
        errorMessage: errorMessage ?? this.errorMessage,
        qrCodeResponse: qrCodeResponse ?? this.qrCodeResponse,
      );

}
