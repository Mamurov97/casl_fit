class QrCodeResponse {
  String? qrCodeToken;
  int? expirySecond;
  QrCodeResponse({this.qrCodeToken,this.expirySecond});

  QrCodeResponse.fromJson(Map<String, dynamic> json) {
    qrCodeToken = json['qr_code_token'];
    expirySecond = json['expiry_second'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['qr_code_token'] = qrCodeToken;
    data['expiry_second'] = expirySecond;
    return data;
  }

  @override
  String toString() {
    return '{qrCodeToken: $qrCodeToken}';
  }
}
