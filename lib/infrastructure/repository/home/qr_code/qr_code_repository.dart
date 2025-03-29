
import '../../../common/network_provider.dart';
class QrCodeRepository{
  Future<Map<String, dynamic>> getQrCodeToke() async {
    final response = await dio.get('auth/get/qrcode');
    return response.data;
  }
}
