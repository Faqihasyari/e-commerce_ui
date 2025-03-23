import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Membuat AppBar dengan shadow yang memiliki spread & blur
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Warna shadow
                  blurRadius: 15, // Membuat shadow lebih lembut
                  spreadRadius: 1, // Membuat shadow lebih menyebar
                  offset: Offset(0, 2), // Arah bayangan ke bawah
                ),
              ],
            ),
            child: AppBar(
              elevation: 0, // Matikan elevation bawaan
              shadowColor: Colors.transparent, // Hilangkan shadow bawaan
              title: Text(
                'Categories',
                style: GoogleFonts.metrophobic(fontWeight: FontWeight.w600),
              ),
              centerTitle: true,
              backgroundColor: Colors.white, // Bisa diganti sesuai tema
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'ShopView is working',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
