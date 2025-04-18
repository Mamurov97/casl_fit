import '../../common/network_provider.dart';

class AuthRepository {
  Future<Map<String, dynamic>> verifyNumber({required String phone}) async {
    final response = await dio.post('auth/verify/number', data: {'phone': phone.replaceRange(0, 3, '')});
    return response.data;
  }

  Future<Map<String, dynamic>> register({required String phone, required String password, required String otpCode}) async {
    final response = await dio.post('auth/register', data: {"phone": phone.replaceRange(0, 3, ''), "password": password, "otp_code": otpCode});
    return response.data;
  }

  Future<Map<String, dynamic>> login({required String phone, required String password}) async {
    final response = await dio.post('auth/login', data: {'phone': phone.replaceRange(0, 3, ''), 'password': password});
    return response.data;
  }

  Future<Map<String, dynamic>> sendOtp({required String phone}) async {
    final response = await dio.post('auth/otp', data: {'phone': phone.replaceRange(0, 3, '')});
    return response.data;
  }

  Future<Map<String, dynamic>> verifyOtp({required String phone}) async {
    final response = await dio.post('auth/otp/verify', data: {'phone': phone.replaceRange(0, 3, '')});
    return response.data;
  }

  Future<Map<String, dynamic>> resetPassword({required String phone, required String password, required String otpCode}) async {
    final response = await dio.post('auth/reset/password', data: {"phone": phone.replaceRange(0, 3, ''), "password": password, "otp_code": otpCode});
    return response.data;
  }

  Future<Map<String, dynamic>> updatePassword({required int userId, required String oldPassword, required String newPassword}) async {
    final response = await dio.post('auth/update/password', data: {"user_id": userId, "old_password": oldPassword, "new_password": newPassword});
    return response.data;
  }

  Future<Map<String, dynamic>> getMe() async {
    final response = await dio.get('auth/me');
    return response.data;
  }

  Future<Map<String, dynamic>> logout({required String phone}) async {
    final response = await dio.post('auth/logout');
    return response.data;
  }
}
