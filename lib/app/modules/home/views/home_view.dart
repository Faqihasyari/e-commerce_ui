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
                      child: Stack(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              child: Image.asset(
                                dress.gambar ?? '',
                                width: Get.width * 0.4,
                                height: Get.height * 0.25,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                ...List.generate(
                                  dress.rating ?? 0,
                                  (index) => Icon(
                                    Icons.star,
                                    color: star,
                                    size: 18,
                                  ),
                                ),
                                Text(
                                  '(${dress.jumlahUlasan})',
                                  style: TextStyle(
                                      fontSize: 12, color: littleText),
                                )
                              ],
                            ),
                            Text(
                              '${dress.merek}',
                              style: TextStyle(fontSize: 12, color: littleText),
                            ),
                            Text(
                              '${dress.nama}',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                              // textAlign: TextAlign.,
                            ),
                            Row(
                              spacing: 3,
                              children: [
                                Text(
                                  '${dress.hargaAsli}\$',
                                  style: TextStyle(
                                      color: littleText,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '${dress.hargaDiskon}\$',
                                  style: TextStyle(
                                      color: discount,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: Get.width * 0.12,
                            height: Get.width * 0.06,
                            decoration: BoxDecoration(
                                color: discount,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            child: Center(
                              child: Text(
                                '-${dress.diskon}%',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.metrophobic(
                                    color: text,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 117,
                            top: 170,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: littleText.withOpacity(0.3),
                                    blurRadius: 5,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                  backgroundColor: text,
                                  child: Obx(() {
                                    var dress = controller.dressList[index];
                                    return IconButton(
                                      icon: Icon(
                                        dress.isFavorite.value
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: dress.isFavorite.value
                                            ? discount
                                            : littleText,
                                        size: 18,
                                      ),
                                      onPressed: () =>
                                          controller.toggleFavorite(
                                              dress.id?.toInt() ?? 0),
                                    );
                                  })),
                            ))
                      ]),
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
