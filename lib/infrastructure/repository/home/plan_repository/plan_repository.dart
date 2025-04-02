import '../../../common/network_provider.dart';

class PlanRepository {
  Future<Map<String, dynamic>> getAllPlans() async {
    final response = await dio.get('client/get-info');
    return response.data;
  }
}
