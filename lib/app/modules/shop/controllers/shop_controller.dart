import 'package:ecommerce_ui/app/data/models/men_model.dart';
import 'package:ecommerce_ui/app/data/models/plus_model.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  var shopList = <Men>[].obs;
  var plusList = <Plus>[].obs;
  var selectedIndex = 1.obs;
  var selectedPlusIndex = 0.obs;

  @override
  void onInit() {
    selectedIndex.value = 1;
    super.onInit();
    fetchShop();
  }

  void fetchShop() {
    var data = [
      Men(id: 1, name: 'New', img: 'assets/images/categories/kategori1.jpeg'),
      Men(
          id: 2,
          name: 'Clothes',
          img: 'assets/images/categories/kategori2.jpg'),
      Men(id: 3, name: 'Shoes', img: 'assets/images/categories/kategori3.jpg'),
      Men(
          id: 4,
          name: 'Accesories',
          img: 'assets/images/categories/kategori4.jpg')
    ];
    shopList.assignAll(data);
  }

  void fetchPlus() {
    var data = [Plus(id: 1, desc: 'SUMMER SALES', subdesc: 'Up to 50% off')];
    plusList.assignAll(data);
  }

  void changeTab(int index){
    selectedPlusIndex.value = index;
  }
}
