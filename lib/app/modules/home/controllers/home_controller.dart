import 'package:ecommerce_ui/app/data/models/dress_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var dressList = <Dress>[].obs; 
  var isFavorite = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDresses();
  }

  void fetchDresses() {
    var data = [
      Dress(
          id: 1,
          nama: "Evening Dress",
          merek: "Dorothy Perkins",
          hargaAsli: 15,
          hargaDiskon: 12,
          diskon: 20,
          rating: 5,
          jumlahUlasan: 10,
          gambar: "assets/images/models1.png"),
      Dress(
          id: 2,
          nama: "Sport Dress",
          merek: "Sitlly",
          hargaAsli: 22,
          hargaDiskon: 19,
          diskon: 15,
          rating: 5,
          jumlahUlasan: 10,
          gambar: "assets/images/models2.png"),
      Dress(
          id: 3,
          nama: "Sport Dress",
          merek: "Dorothy Perkins",
          hargaAsli: 14,
          hargaDiskon: 12,
          diskon: 20,
          rating: 5,
          jumlahUlasan: 10,
          gambar: "assets/images/models3.png"),
    ];

    dressList.assignAll(data); 
  }

  void toggleFavorite(int id) {
  var index = dressList.indexWhere((dress) => dress.id == id);
  if (index != -1) {
    dressList[index].isFavorite.value = !dressList[index].isFavorite.value;
  }
}
}
