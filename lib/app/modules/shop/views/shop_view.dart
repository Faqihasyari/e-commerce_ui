import 'package:ecommerce_ui/app/theme/app_theme.dart';
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
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 15,
                  spreadRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: AppBar(
              elevation: 0,
              shadowColor: Colors.transparent,
              title: Text(
                'Categories',
                style: GoogleFonts.metrophobic(fontWeight: FontWeight.w600),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: discount, borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: 100,
              child: Column(
                spacing: 3,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'SUMMER SALES',
                    style: GoogleFonts.metrophobic(
                        fontSize: 20, color: text, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Up to 50% off',
                    style: GoogleFonts.metrophobic(
                      color: text,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: text),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('New'),
                        ),
                        Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          child: Image.asset(
                            'assets/images/categories/kategori1.jpeg',
                            width: Get.width / 2,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
