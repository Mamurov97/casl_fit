import '../../common/network_provider.dart';

class TariffRepository {
  Future<Map<String, dynamic>> getCurrentTariffs({String? searchText}) async {
    final response = await dio.get('client/get-plan');
    return response.data;
  }

  Future<Map<String, dynamic>> getTariffs({String? searchText}) async {
    final response = await dio.get('plan/get-plans');
    return response.data;
  }
}
