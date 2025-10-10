import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shantika_pkl/widgets/app_style.dart';
import '../../widgets/custom_arrow.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildImage(),
            _buildDescription(),
            _buildContact(),
          ],
        ),
      ),
    );
  }
}

Widget _buildHeader() {
  return Container(
    decoration: BoxDecoration(
      color: AppStyle.background,
      boxShadow: [
        BoxShadow(
          color: AppStyle.black100,
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: CustomArrow(title: "Tentang Kami"),
  );
}

Widget _buildImage() {
  return Padding(
    padding: EdgeInsets.only(
      top: 24,
      left: AppStyle.paddingXL,
      right: AppStyle.paddingXL,
    ),
    child: Column(
      children: [
        Text("NEW SHANTIKA", style: AppStyle.display(color: AppStyle.black500)),
        Image.asset("assets/images/travel.png"),
      ],
    ),
  );
}

Widget _buildDescription() {
  return Padding(
    padding: EdgeInsets.only(
      top: 24,
      left: AppStyle.paddingXL,
      right: AppStyle.paddingXL,
    ),
    child: Column(
      children: [
        Text(
          "New Shantika berdiri dari tahun 13 Maret 2005, kami merupakan jasa transportasi bus dari Jepara dan telah menjalankan busnya di seluruh pelosok Indonesia. Kami merupakan perusahaan bus yang menyediakan berbagai jenis layanan bus yang menghubungkan berbagai jalur kota. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc facilisis vitae id feugiat turpis imperdiet pharetra. Tempus velit non pharetra orci malesuada lectus. Lacus in nunc pretium semper adipiscing. ",
          style: AppStyle.caption1(color: AppStyle.text),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget _buildContact() {
  return Padding(
    padding: EdgeInsets.only(
      top: 24,
      left: AppStyle.paddingXL,
      right: AppStyle.paddingXL,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/insta.svg"),
            SizedBox(width: 32),
            SvgPicture.asset("assets/images/mail.svg"),
            SizedBox(width: 32),
            SvgPicture.asset("assets/images/fb.svg"),
          ],
        ),
        SizedBox(height: 24),
        Text(
          "Jl. Kudus-Jepara KM 9 Desa Papringan Kecamatan Kaliwungu Kabupaten Kudus Jawa Tengah 59361",
          style: AppStyle.heading2(color: AppStyle.black400),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
