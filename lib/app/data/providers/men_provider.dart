import 'package:get/get.dart';

import '../models/men_model.dart';

class MenProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Men.fromJson(map);
      if (map is List) return map.map((item) => Men.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Men?> getMen(int id) async {
    final response = await get('men/$id');
    return response.body;
  }

  Future<Response<Men>> postMen(Men men) async => await post('men', men);
  Future<Response> deleteMen(int id) async => await delete('men/$id');
}
