import 'package:ecommerce_ui/app/data/models/dress_model.dart';
import 'package:ecommerce_ui/app/data/models/new_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var dressList = <Dress>[].obs; 
  var newList = <New>[].obs;
  var isFavorite = false.obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDresses();
    fetchNew();
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
  void fetchNew(){
    var data = [
      New(
        id: 1,
        nama: "Blouse",
        merek: "OVS",
        harga: 30,
        desc: "New",
        rating: 5,
        jumlahUlasan: 0,
        gambar: "assets/images/blouse.jpg"
      ),
      New(
        id: 2,
        nama: "T-shirt Sailing",
        merek: "Mango Boy",
        harga: 10,
        desc: "New",
        rating: 5,
        jumlahUlasan: 0,
        gambar: "assets/images/tshirt.jpg"
      ),
      New(
        id: 3,
        nama: "Jeans",
        merek: "Cool",
        harga: 45,
        desc: "New",
        rating: 5,
        jumlahUlasan: 0,
        gambar: "assets/images/jeans.jpg"
      )
    ];
    newList.assignAll(data);
  }

  void toggleFavorite(int id) {
  var index = dressList.indexWhere((dress) => dress.id == id);
  if (index != -1) {
    dressList[index].isFavorite.value = !dressList[index].isFavorite.value;
  }
}

void toggleFavorite2(int id) {
  var index = newList.indexWhere((dress) => dress.id == id);
  if (index != -1) {
    newList[index].isFavorite.value = !newList[index].isFavorite.value;
  }
}

void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
