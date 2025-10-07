import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconly/iconly.dart' show IconlyLight;
import 'package:shantika_pkl/widgets/custom_section_divider.dart';
import '../widgets/app_style.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_circle_item.dart';
import '../widgets/custom_carousel_card.dart';

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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/bg_home.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Container(height: 800, color: Colors.transparent),
              ],
            ),

            Padding(
              padding: EdgeInsets.all(AppStyle.paddingXL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: AppStyle.spaceM),
                  Row(
                    children: [
                      SizedBox(width: AppStyle.spaceXXL),
                      Image.asset(
                        'assets/images/logo_shantika.png',
                        height: 42,
                      ),
                      SizedBox(width: AppStyle.spaceM),
                      Icon(Icons.notifications, color: AppStyle.background),
                    ],
                  ),
                  SizedBox(height: AppStyle.spaceL),
                  CustomCardContainer(
                    borderRadius: AppStyle.radiusXL,
                    padding: EdgeInsets.all(AppStyle.paddingL),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "Cari Tiket Bus",
                            style: AppStyle.caption2(color: AppStyle.black500),
                          ),
                        ),
                        SizedBox(height: AppStyle.spaceM),
                        Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: AppStyle.black300,
                                      size: AppStyle.iconM,
                                    ),
                                    SizedBox(width: 12),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Keberangkatan",
                                            style: AppStyle.caption1(
                                              color: AppStyle.black300,
                                            ),
                                          ),
                                          Text(
                                            "Pilih Keberangkatan",
                                            style: AppStyle.caption1(
                                              color: AppStyle.black500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                Container(
                                  height: 1,
                                  color: AppStyle.black200,
                                  margin: EdgeInsets.symmetric(
                                    vertical: AppStyle.paddingL,
                                    horizontal: AppStyle.paddingXXL,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: AppStyle.black300,
                                      size: AppStyle.iconM,
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Tujuan",
                                            style: AppStyle.caption1(
                                              color: AppStyle.black300,
                                            ),
                                          ),
                                          Text(
                                            "Pilih Tujuan",
                                            style: AppStyle.caption1(
                                              color: AppStyle.black500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Center(
                                child: Icon(
                                  IconlyLight.swap,
                                  color: AppStyle.black300,
                                  size: AppStyle.iconM,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppStyle.spaceL),
                        CustomButton(
                          text: "Cari Tiket",
                          onPressed: () {},
                          width: double.infinity,
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: AppStyle.spaceL),
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
                  SizedBox(height: AppStyle.spaceL),
                  CustomSectionDivider(text: "Menu Favorit"),
                  Wrap(
                    spacing: 24,
                    runSpacing: 18,
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
                      CustomCircleItem(
                        icon: Icons.web_rounded,
                        label: "Website",
                      ),
                    ],
                  ),
                  SizedBox(height: AppStyle.spaceL),
                  CustomCardContainer(
                    width: 340,
                    borderRadius: AppStyle.radiusL,
                    gradient: RadialGradient(
                      center: Alignment.topLeft,
                      radius: 1.5,
                      colors: [
                        AppStyle.primary5,
                        AppStyle.primary4,
                        AppStyle.primary3,
                      ],
                      stops: [0.0, 0.6, 1.0],
                    ),
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
                              SizedBox(height: AppStyle.spaceS),
                              Text(
                                "Berikan review untuk pengalaman perjalananmu bersama New Shantika",
                                style: AppStyle.caption1(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: AppStyle.spaceS),
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
                  SizedBox(height: AppStyle.spaceL),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomSectionDivider(text: "Riwayat"),
                      Padding(
                        padding: const EdgeInsets.all(AppStyle.paddingXL),
                        child: Text(
                          "Lihat Semua",
                          style: AppStyle.heading2(color: AppStyle.primary1),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomCardContainer(
                        padding: EdgeInsets.all(AppStyle.paddingL),
                        margin: EdgeInsets.only(bottom: AppStyle.spaceM),
                        borderColor: AppStyle.black100,
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bus 10 - Executive Big Top",
                                      style: AppStyle.heading3(
                                        color: AppStyle.black500,
                                      ),
                                    ),
                                    CustomButton(
                                      text: "Beri Review",
                                      onPressed: () {},
                                      width: 80,
                                      height: 25,
                                      fontSize: 8,
                                      borderRadius: 25,
                                    ),
                                  ],
                                ),
                                SizedBox(height: AppStyle.spaceM),
                                Text(
                                  "11 February 2025 - 20:30",
                                  style: AppStyle.caption1(
                                    color: AppStyle.black400,
                                  ),
                                ),
                                SizedBox(height: AppStyle.spaceS),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: AppStyle.primary1,
                                          size: 20,
                                        ),
                                        SizedBox(width: AppStyle.spaceS),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Krapyak – Semarang",
                                                style: AppStyle.caption1(
                                                  color: AppStyle.black500,
                                                ),
                                              ),
                                              Text(
                                                "05:30",
                                                style: AppStyle.caption1(
                                                  color: AppStyle.black400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: AppStyle.spaceL),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: AppStyle.primary2,
                                          size: 20,
                                        ),
                                        SizedBox(width: AppStyle.spaceS),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Gejayan – Sieman",
                                                style: AppStyle.caption1(
                                                  color: AppStyle.black500,
                                                ),
                                              ),
                                              Text(
                                                "09:30",
                                                style: AppStyle.caption1(
                                                  color: AppStyle.black400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: AppStyle.spaceS),
                              ],
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Text(
                                "Rp230.000",
                                style: AppStyle.heading2(
                                  color: AppStyle.primary1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomSectionDivider(text: "Promo"),
                      Padding(
                        padding: const EdgeInsets.all(AppStyle.paddingXL),
                        child: Text(
                          "Lihat Semua",
                          style: AppStyle.heading2(color: AppStyle.primary1),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(
                            horizontal: AppStyle.paddingL,
                          ),
                          children: [
                            CustomCardContainer(
                              width: 300,
                              margin: EdgeInsets.only(right: AppStyle.spaceM),
                              borderColor: AppStyle.black200,
                              borderRadius: AppStyle.radiusL,
                              padding: EdgeInsets.zero,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Image Promo
                                  Container(
                                    height: 116,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          AppStyle.radiusL,
                                        ),
                                        topRight: Radius.circular(
                                          AppStyle.radiusL,
                                        ),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/promo.png',
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  // Content
                                  Padding(
                                    padding: EdgeInsets.all(AppStyle.paddingL),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Promo Mudik 2024",
                                          style: AppStyle.caption1(
                                            color: AppStyle.black500,
                                          ),
                                        ),
                                        SizedBox(height: 4),

                                        Row(

                                          children: [
                                            Text(
                                              "Potongan hingga Rp50.000",
                                              style: AppStyle.paragraph1(
                                                color: AppStyle.primary1,
                                              ),
                                            ),
                                            SizedBox(width: AppStyle.spaceL),
                                            Icon(
                                              IconlyLight.calendar,
                                              size: AppStyle.iconM,
                                              color: AppStyle.black400,
                                            ),
                                            Text(
                                              "28 April 2025",
                                              style: AppStyle.paragraph1(
                                                color: AppStyle.black400,
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomCardContainer(
                              width: 300,
                              margin: EdgeInsets.only(right: AppStyle.spaceM),
                              borderColor: AppStyle.black200,
                              borderRadius: AppStyle.radiusL,
                              padding: EdgeInsets.zero,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Image Promo
                                  Container(
                                    height: 116,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          AppStyle.radiusL,
                                        ),
                                        topRight: Radius.circular(
                                          AppStyle.radiusL,
                                        ),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/promo.png',
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  // Content
                                  Padding(
                                    padding: EdgeInsets.all(AppStyle.paddingL),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Promo Mudik 2024",
                                          style: AppStyle.caption1(
                                            color: AppStyle.black500,
                                          ),
                                        ),
                                        SizedBox(height: 4),

                                        Row(

                                          children: [
                                            Text(
                                              "Potongan hingga Rp50.000",
                                              style: AppStyle.paragraph1(
                                                color: AppStyle.primary1,
                                              ),
                                            ),
                                            SizedBox(width: AppStyle.spaceL),
                                            Icon(
                                              IconlyLight.calendar,
                                              size: AppStyle.iconM,
                                              color: AppStyle.black400,
                                            ),
                                            Text(
                                              "28 April 2025",
                                              style: AppStyle.paragraph1(
                                                color: AppStyle.black400,
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomSectionDivider(text: "Artikel"),
                          Padding(
                            padding: const EdgeInsets.all(AppStyle.paddingXL),
                            child: Text(
                              "Lihat Semua",
                              style: AppStyle.heading2(color: AppStyle.primary1),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomSectionDivider(text: "Testimoni"),
                          Padding(
                            padding: const EdgeInsets.all(AppStyle.paddingXL),
                            child: Text(
                              "Lihat Semua",
                              style: AppStyle.heading2(color: AppStyle.primary1),
                            ),
                          ),
                        ],
                      ),
                      CustomCardContainer(
                        margin: EdgeInsets.only(bottom: AppStyle.spaceM),
                        borderColor: AppStyle.black200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Esther Howard",
                                  style: AppStyle.heading3(
                                    color: AppStyle.black500,
                                  ),
                                ),
                                Text(
                                  "13 Feb 2025",
                                  style: AppStyle.caption1(
                                    color: AppStyle.black400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AppStyle.spaceS),
                            Text(
                              "Super Executive",
                              style: AppStyle.caption1(
                                color: AppStyle.primary1,
                              ),
                            ),
                            SizedBox(height: AppStyle.spaceS),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: AppStyle.iconM),
                                Icon(Icons.star, color: Colors.amber, size: AppStyle.iconM),
                                Icon(Icons.star, color: Colors.amber, size: AppStyle.iconM),
                                Icon(Icons.star, color: Colors.amber, size: AppStyle.iconM),
                                Icon(Icons.star, color: Colors.amber, size: AppStyle.iconM),
                              ],
                            ),
                            SizedBox(height: AppStyle.spaceS),
                            Text(
                              "Sangat menyenangkan melakukan perjalanan bersama bus Shantika. Supirnya baik dan ramah, ACnya dingin, dan saya bisa tertidur pulas.",
                              style: AppStyle.paragraph1(
                                color: AppStyle.black500,
                              ),
                            ),
                            SizedBox(height: AppStyle.spaceS),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: AppStyle.primary1.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(AppStyle.radiusM),
                                ),
                                child: Text(
                                  "+2",
                                  style: AppStyle.caption2(
                                    color: AppStyle.primary1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
