import '../../common/network_provider.dart';

class NotificationRepository {
  Future<Map<String, dynamic>> getNotifications() async {
    final response = await dio.get('notification/all');
    return response.data;
  }

  Future<Map<String, dynamic>> readAllNotifications() async {
    final response = await dio.get('notification/all/read');
    return response.data;
  }

  Future<Map<String, dynamic>> showNotification(int notificationId) async {
    final response = await dio.get('notification/view/$notificationId');
    return response.data;
  }
}
