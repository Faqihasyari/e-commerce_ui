import 'package:ecommerce_ui/app/data/models/dress_model.dart';
import 'package:ecommerce_ui/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(children: [
              Image.asset(
                'assets/images/mainpage1.png',
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 140, 0, 0),
                child: Text(
                  'Street clothes',
                  style: GoogleFonts.metrophobic(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: text,
                  ),
                ),
              )
            ]),
            SizedBox(height: Get.height * 0.0150),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sale',
                        style: GoogleFonts.metrophobic(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Super summer sale',
                        style: GoogleFonts.metrophobic(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.metrophobic(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Obx(() {
              return SizedBox(
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.dressList.length,
                  itemBuilder: (context, index) {
                    var dress = controller.dressList[index];
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          children: [
                            Image.asset(
                              dress.gambar ?? '',
                              width: Get.width * 0.4,
                              height: Get.height * 0.3,
                              fit: BoxFit.cover,
                            ),
                            Text(dress.nama ?? "No Name"),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
