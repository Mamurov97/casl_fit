part of 'qr_code_bloc.dart';

class QrCodeState {
  final BlocStatus? status;
  final String? errorMessage;
  final QrCodeResponse? qrCodeResponse;
  final int remainingSeconds;
  final bool isExpired;
  QrCodeState({
    this.status,
    this.errorMessage,
    this.qrCodeResponse,
    this.isExpired = false,
    this.remainingSeconds = 0,
  });

  QrCodeState copyWith({
    BlocStatus? status,
    String? errorMessage,
    QrCodeResponse? qrCodeResponse,
    int? remainingSeconds,
    bool? isExpired,
  }) =>
      QrCodeState(
        status: status ?? this.status,
        errorMessage: errorMessage ?? this.errorMessage,
        qrCodeResponse: qrCodeResponse ?? this.qrCodeResponse,
        remainingSeconds: remainingSeconds ?? this.remainingSeconds,
        isExpired: isExpired ?? this.isExpired,
      );

}
