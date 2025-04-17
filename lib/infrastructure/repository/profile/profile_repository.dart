
import '../../common/network_provider.dart';

class ProfileRepository{
  Future<Map<String, dynamic>> getProfileData() async {
    final response = await dio.get('client/get-info');
    return response.data;
  }

  Future<Map<String, dynamic>> getPlan() async {
    final response = await dio.get('tariff/all');
    return response.data;
  }

  Future<Map<String, dynamic>> setWeight({required String weightHeight}) async {
    final response = await dio.post('client/weight-store', data: {"size": weightHeight});
    return response.data;
  }

  Future<Map<String, dynamic>> setHeight({required String weightHeight}) async {
    final response = await dio.post('client/height-store', data: {"size": weightHeight});
    return response.data;
  }

  Future<Map<String, dynamic>> getWeight() async {
    final response = await dio.get('client/weight-info');
    return response.data;
  }

  Future<Map<String, dynamic>> getHeight() async {
    final response = await dio.get('client/height-info');
    return response.data;
  }
}
