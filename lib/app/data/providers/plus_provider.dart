import 'package:get/get.dart';

import '../models/plus_model.dart';

class PlusProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Plus.fromJson(map);
      if (map is List) return map.map((item) => Plus.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Plus?> getPlus(int id) async {
    final response = await get('plus/$id');
    return response.body;
  }

  Future<Response<Plus>> postPlus(Plus plus) async => await post('plus', plus);
  Future<Response> deletePlus(int id) async => await delete('plus/$id');
}
