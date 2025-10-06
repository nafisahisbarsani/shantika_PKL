import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconly/iconly.dart' show IconlyLight;
import '../widgets/app_style.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_circle_item.dart';
import '../widgets/custom_input_row.dart';
import '../widgets/custom_carousel_card.dart';
import '../widgets/custom_menu_tittle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> carouselItems = const [
    {'image': 'assets/images/banner_shantika_1.png'},
    {'image': 'assets/images/banner_shantika_2.png'},
    {'image': 'assets/images/banner_shantika_3.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.background,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/bg_home.png',
              fit: BoxFit.cover,
              height: 220,
              alignment: Alignment.topCenter,
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(AppStyle.paddingL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: AppStyle.spaceM),
                  Row(
                    children: [
                      const SizedBox(width: AppStyle.spaceXXL),
                      Image.asset('assets/images/logo_shantika.png', height: 42),
                      const SizedBox(width: AppStyle.spaceM),
                      Icon(Icons.notifications, color: AppStyle.background,)
                    ],
                  ),
                  const SizedBox(height: AppStyle.spaceL),
                  CustomCardContainer(
                    borderRadius: AppStyle.radiusXL,
                    padding: EdgeInsets.all(AppStyle.paddingM),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Cari Tiket Bus",
                            style: AppStyle.heading2(color: AppStyle.black100),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const CustomInputRow(
                          label: "Keberangkatan",
                          hint: "Pilih Keberangkatan",
                          icon: Icons.location_on_outlined,
                        ),
                        const SizedBox(height: 12),
                        const CustomInputRow(
                          label: "Tujuan",
                          hint: "Pilih Tujuan",
                          icon: Icons.location_on_outlined,
                        ),
                        const SizedBox(height: 24),
                        Center(
                          child: CustomButton(
                            text: "Cari Tiket",
                            onPressed: () {},
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 160,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                    ),
                    items: carouselItems.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return CustomCarouselCard(
                            imagePath: item['image']!,
                            title: "",
                            subtitle: "",
                          );
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 28),
                  MenuTitle(
                    text: "Menu Favorit",
                    padding: EdgeInsets.only(left: AppStyle.spaceM),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 24,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      CustomCircleItem(
                        icon: Icons.airplane_ticket_outlined,
                        label: "Pesan Tiket",
                      ),
                      CustomCircleItem(
                        icon: Icons.directions_bus,
                        label: "Info Kelas Armada",
                      ),
                      CustomCircleItem(
                        icon: Icons.business,
                        label: "Informasi Perusahaan",
                      ),
                      CustomCircleItem(
                        icon: Icons.shopping_cart,
                        label: "New Shantika Shop",
                      ),
                      CustomCircleItem(
                        icon: Icons.share,
                        label: "Sosial Media",
                      ),
                      CustomCircleItem(
                        icon: Icons.person,
                        label: "Informasi Agen",
                      ),
                      CustomCircleItem(
                        icon: Icons.card_membership,
                        label: "E-Membership",
                      ),
                      CustomCircleItem(icon: Icons.public, label: "Website"),
                    ],
                  ),

                  const SizedBox(height: 30),
                  CustomCardContainer(
                    backgroundColor: AppStyle.primary2,
                    borderRadius: AppStyle.radiusL,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bagaimana perjalananmu?",
                                style: AppStyle.caption2(
                                  color: AppStyle.background,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "Berikan review untuk pengalaman perjalananmu bersama New Shantika",
                                style: AppStyle.caption1(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                              const SizedBox(height: 10),
                              CustomButton(
                                text: "Beri Review",
                                onPressed: () {},
                                color: AppStyle.background,
                                width: 125,
                                height: 40,
                                textColor: AppStyle.primary2,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Image.asset(
                          'assets/images/star.png',
                          height: 70,
                          width: 70,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Riwayat",
                        style: AppStyle.heading2(color: AppStyle.black500),
                      ),
                      Text(
                        "Lihat Semua",
                        style: AppStyle.heading2(color: AppStyle.primary1),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
