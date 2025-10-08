import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shantika_pkl/widgets/app_style.dart';
import 'package:shantika_pkl/widgets/custom_arrow.dart';

import '../../widgets/custom_card.dart';

class ArtikelDetailPage extends StatelessWidget {
  const ArtikelDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomArrow(
              title: "Detail Artikel",
              suffixIcon: Icon(Bootstrap.share, size: AppStyle.iconM),
            ),
            _buildHeaderImage(),
            _buildArticleContent(),
            _buildTipsList(),
            _buildListArtikel(),
          ],
        ),
      ),
    );
  }
}

Widget _buildHeaderImage() {
  return Padding(
    padding: const EdgeInsets.all(AppStyle.paddingXL),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/artikel_detail1.jpg',
            width: 372,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}

Widget _buildArticleContent() {
  return Padding(
    padding: const EdgeInsets.only(
      left: AppStyle.paddingXL,
      right: AppStyle.paddingXL,
      top: AppStyle.paddingXS,
    ),
    child: Column(
      children: [
        Text(
          "Pengalaman terbaik dalam perjalanan selama pandemi",
          style: AppStyle.heading3(color: AppStyle.black500),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: AppStyle.spaceS),
        Text(
          "Perjalanan selama pandemi menghadirkan tantangan tersendiri, tetapi juga memberikan pengalaman berharga yang sulit dilupakan. Salah satu momen terbaik adalah ketika saya melakukan perjalanan ke daerah terpencil dengan protokol kesehatan yang ketat.",
          style: AppStyle.paragraph1(color: AppStyle.text),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget _buildTipsList() {
  final List<Map<String, dynamic>> tipsList = [
    {
      'number': '1.',
      'title': 'Penerapan Protokol Kesehatan',
      'image': 'assets/images/doctor.png',
      'description':
          'Mengutamakan kesehatan dengan masker, hand sanitizer, dan menjaga jarak, memberikan rasa aman selama perjalanan.',
    },
    {
      'number': '2.',
      'title': 'Menemukan Keindahan Baru',
      'image': 'assets/images/doctor.png',
      'description':
          'Mengeksplorasi tempat-tempat tersembunyi yang sebelumnya jarang dikunjungi.',
    },
    {
      'number': '3.',
      'title': 'Destinasi Lebih Sepi',
      'image': 'assets/images/doctor.png',
      'description':
          'Wisata yang biasanya ramai menjadi lebih tenang, memungkinkan pengalaman yang lebih intim dengan alam.',
    },
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: AppStyle.paddingXL),
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: tipsList.length,
      itemBuilder: (context, index) {
        return _buildTipItem(
          number: tipsList[index]['number']!,
          title: tipsList[index]['title']!,
          image: tipsList[index]['image']!,
          description: tipsList[index]['description']!,
        );
      },
    ),
  );
}

Widget _buildTipItem({
  required String number,
  required String title,
  required String description,
  required String image,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: AppStyle.spaceL),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, bottom: 6),
          child: Text(
            "$number $title",
            style: AppStyle.caption3(color: AppStyle.black500),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            image,
            width: 150,
            height: 116,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            description,
            style: AppStyle.paragraph3(color: AppStyle.text),
          ),
        ),
      ],
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

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: AppStyle.paddingXL,
          right: AppStyle.paddingXL,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Baca Artikel Lainnya",
              style: AppStyle.caption3(color: AppStyle.black500),
            ),
            Text(
              "Selengkapnya",
              style: AppStyle.caption3(color: AppStyle.danger),
            ),
          ],
        ),
      ),
      ListView.builder(
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
      ),
    ],
  );
}
