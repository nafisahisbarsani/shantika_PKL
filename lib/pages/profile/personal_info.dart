import 'package:flutter/material.dart';
import 'package:shantika_pkl/widgets/app_style.dart';

import '../../widgets/custom_arrow.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.background,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppStyle.paddingL),
        child: Column(
          children: [
            _buildHeader(),
            SizedBox(height: AppStyle.spaceM),
            _buildProfileHeader(),
            SizedBox(height: AppStyle.spaceM),
            _buildInfoCard(),
            SizedBox(height: AppStyle.spaceL),
            _buildSaveButton(),
          ],
        ),
      ),
    );
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

  Widget _buildProfileHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage("assets/images/profile_sample.png"),
        ),
        SizedBox(height: AppStyle.spaceS),
        Text(
          "Anastasya Carolina",
          style: AppStyle.paragraph2(color: AppStyle.black300),
        ),
        Text(
          "Member New Shantika",
          style: AppStyle.caption3(color: AppStyle.black400),
        ),
      ],
    );
  }

  Widget _buildInfoCard() {
    return Container(
      decoration: BoxDecoration(
        color: AppStyle.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(AppStyle.paddingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextField("Nama Lengkap", "Anastasya Carolina"),
          _buildTextField("Nomor Telepon", "083745552724"),
          _buildTextField("Email", "anastasya.carolina@gmail.com"),
          Row(
            children: [
              Expanded(child: _buildTextField("Tempat Lahir", "Semarang")),
              SizedBox(width: AppStyle.spaceM),
              Expanded(
                child: _buildTextField("Tanggal Lahir", "03 Oktober 2006"),
              ),
            ],
          ),
          SizedBox(height: AppStyle.spaceM),
          _buildGenderSection(),
          SizedBox(height: AppStyle.spaceM),
          _buildTextField(
            "Alamat Lengkap",
            "Jl Sentiyaki Raya No 48, Semarang Utara",
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildGenderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Gender", style: AppStyle.paragraph3(color: AppStyle.black500)),
        SizedBox(height: AppStyle.spaceS),
        Row(
          children: [
            _buildGenderButton("Pria", false),
            SizedBox(width: AppStyle.spaceS),
            _buildGenderButton("Wanita", true),
          ],
        ),
      ],
    );
  }

  Widget _buildGenderButton(String text, bool isSelected) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF3B3561) : const Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, {int maxLines = 1}) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppStyle.spaceM),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppStyle.paragraph3(color: AppStyle.black500)),
          SizedBox(height: AppStyle.spaceS),
          TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppStyle.caption1(color: AppStyle.black300),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFFE6E6E6),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFFE6E6E6),
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSaveButton() {
    return SizedBox(
      width: double.infinity,
      height: 46,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFB7BAC3),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
        onPressed: () {},
        child: const Text("Simpan", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
