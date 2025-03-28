import '../../common/network_provider.dart';

class AuthRepository {
  Future<Map<String, dynamic>> signIn({
    required String phone,
    required String password,
  }) async {
    final response = await dio.post(
      'auth/login',
      data: {
        'phone': phone,
        'password': password,
      },
    );
    return response.data;
  }

  Future<Map<String, dynamic>> me() async {
    final response = await dio.get('auth/me');
    return response.data;
  }
}
