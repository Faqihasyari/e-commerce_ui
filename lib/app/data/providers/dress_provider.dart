import 'package:get/get.dart';

import '../models/dress_model.dart';

class DressProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Dress.fromJson(map);
      if (map is List) return map.map((item) => Dress.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Dress?> getDress(int id) async {
    final response = await get('dress/$id');
    return response.body;
  }

  Future<Response<Dress>> postDress(Dress dress) async =>
      await post('dress', dress);
  Future<Response> deleteDress(int id) async => await delete('dress/$id');
}
