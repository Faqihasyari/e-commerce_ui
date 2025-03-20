import 'package:get/get.dart';

class New {
  int? id;
  String? nama;
  String? merek;
  int? harga;
  String? desc;
  int? rating;
  int? jumlahUlasan;
  String? gambar;
  var isFavorite = false.obs;


  New(
      {this.id,
      this.nama,
      this.merek,
      this.harga,
      this.desc,
      this.rating,
      this.jumlahUlasan,
      this.gambar});

  New.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    merek = json['merek'];
    harga = json['harga'];
    desc = json['desc'];
    rating = json['rating'];
    jumlahUlasan = json['jumlah_ulasan'];
    gambar = json['gambar'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['merek'] = merek;
    data['harga'] = harga;
    data['desc'] = desc;
    data['rating'] = rating;
    data['jumlah_ulasan'] = jumlahUlasan;
    data['gambar'] = gambar;
    return data;
  }
}
