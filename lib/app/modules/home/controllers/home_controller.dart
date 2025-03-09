import 'package:ecommerce_ui/app/data/models/dress_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var dressList = <Dress>[].obs; 

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
          gambar: "assets/evening_dress.jpg"),
      Dress(
          id: 2,
          nama: "Sport Dress",
          merek: "Sitlly",
          hargaAsli: 22,
          hargaDiskon: 19,
          diskon: 15,
          rating: 5,
          jumlahUlasan: 10,
          gambar: "assets/sport_dress.jpg"),
    ];

    dressList.assignAll(data); 
  }
}
