class QrCodeResponse {
  String? qrCodeToken;

  QrCodeResponse({this.qrCodeToken});

  QrCodeResponse.fromJson(Map<String, dynamic> json) {
    qrCodeToken = json['qr_code_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['qr_code_token'] = qrCodeToken;
    return data;
  }

  @override
  String toString() {
    return '{qrCodeToken: $qrCodeToken}';
  }
}
