import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shantika_pkl/pages/home/artikel_detail_page.dart';
import 'package:shantika_pkl/widgets/app_style.dart';
import 'package:shantika_pkl/widgets/custom_arrow.dart';
import 'package:shantika_pkl/widgets/custom_card.dart';
import 'package:shantika_pkl/widgets/custom_text_field.dart';

class ArtikelPage extends StatelessWidget {
  const ArtikelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomArrow(title: "Artikel"),
            _buildSearchBar(),
            _buildListArtikel(),
          ],
        ),
      ),
    );
  }
}

Widget _buildSearchBar() {
  return Padding(
    padding: const EdgeInsets.only(
      left: AppStyle.paddingXL,
      right: AppStyle.paddingXL,
      top: AppStyle.paddingM,
    ),
    child: CustomTextField(
      width: double.infinity,
      isObsecure: false,
      labelText: "Cari",
      suffixIcon: Icon(Bootstrap.search, size: AppStyle.iconM),
    ),
  );
}

Widget _buildListArtikel() {
  final List<Map<String, String>> artikelList = [
    {
      'title': 'Pengalaman terbaik dalam perjalanan selama pandemi',
      'image': 'assets/images/artikel_detail1.jpg',
    },
    {
      'title': 'Penerapan Protokol Kesehatan Dalam perjalanan',
      'image': 'assets/images/artikel_detail2.jpg',
    },
    {
      'title': 'Pengalaman terbaik dalam perjalanan selama pandemi',
      'image': 'assets/images/artikel_detail3.jpg',
    },
    {
      'title': 'Pengalaman terbaik dalam perjalanan selama pandemi',
      'image': 'assets/images/artikel_detail4.jpg',
    },
  ];

  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: artikelList.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppStyle.paddingXL,
          vertical: AppStyle.paddingS,
        ),
        child: CustomCardContainer(
          onTap: () => Get.to(() => ArtikelDetailPage()),
          borderColor: AppStyle.black200,
          borderRadius: 8,
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  artikelList[index]['image']!,
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppStyle.paddingM),
                child: Text(
                  artikelList[index]['title']!,
                  style: AppStyle.caption1(color: AppStyle.black500),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
