import '../../common/network_provider.dart';

class HomeRepository {
  Future<Map<String, dynamic>> getMe() async {
    final response = await dio.get('auth/me');
    return response.data;
  }

  Future<Map<String, dynamic>> getNotificationsCount() async {
    final response = await dio.get('home/get-unread-notification');
    return response.data;
  }

  Future<Map<String, dynamic>> getUserLiveCount() async {
    final response = await dio.get('home/get-real-user-count');
    return response.data;
  }

  Future<Map<String, dynamic>> getDailyUserCount() async {
    final response = await dio.get('home/get-real-user-count-in-daily');
    return response.data;
  }
}
