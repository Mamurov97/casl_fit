import '../../../common/network_provider.dart';

class ProfileRepository{
  Future<Map<String, dynamic>> getProfileData() async {
    final response = await dio.get('client/get-info');
    return response.data;
  }

  Future<Map<String, dynamic>> getPlan() async {
    final response = await dio.get('plan/all');
    return response.data;
  }
}
