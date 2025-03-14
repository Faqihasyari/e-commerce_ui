import 'package:get/get.dart';

class Dress {
  int? id;
  String? nama;
  String? merek;
  int? hargaAsli;
  int? hargaDiskon;
  int? diskon;
  int? rating;
  int? jumlahUlasan;
  String? gambar;
  var isFavorite = false.obs;

  Dress(
      {
        this.id,
      this.nama,
      this.merek,
      this.hargaAsli,
      this.hargaDiskon,
      this.diskon,
      this.rating,
      this.jumlahUlasan,
      this.gambar});

  Dress.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    merek = json['merek'];
    hargaAsli = json['harga_asli'];
    hargaDiskon = json['harga_diskon'];
    diskon = json['diskon'];
    rating = json['rating'];
    jumlahUlasan = json['jumlah_ulasan'];
    gambar = json['gambar'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['merek'] = merek;
    data['harga_asli'] = hargaAsli;
    data['harga_diskon'] = hargaDiskon;
    data['diskon'] = diskon;
    data['rating'] = rating;
    data['jumlah_ulasan'] = jumlahUlasan;
    data['gambar'] = gambar;
    return data;
  }
}
