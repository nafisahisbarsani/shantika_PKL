import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shantika_pkl/pages/chat_page.dart';
import 'package:shantika_pkl/pages/home/home_page.dart';
import 'package:shantika_pkl/pages/order_page.dart';
import 'package:shantika_pkl/pages/profile_page.dart';
import 'package:shantika_pkl/widgets/app_style.dart';

import '../controller/nav_controller.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final NavController navController = Get.put(NavController());

    final List<Widget> pages = const [
      HomePage(),
      ChatPage(),
      OrderPage(),
      ProfilePage(),
    ];

    return Obx(() => Scaffold(
      body: pages[navController.currentIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navController.currentIndex.value,
        onTap: navController.changePage,
        backgroundColor: AppStyle.background,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppStyle.primary2,
        unselectedItemColor: AppStyle.black200,
        selectedLabelStyle: AppStyle.paragraph1(color: AppStyle.primary2),
        unselectedLabelStyle: AppStyle.paragraph1(color: AppStyle.black200),
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
            activeIcon: Icon(IconlyBold.home,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.chat),
            activeIcon: Icon(IconlyBold.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Bootstrap.ticket_perforated),
            activeIcon: Icon(Bootstrap.ticket_perforated_fill),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.profile),
            activeIcon: Icon(IconlyBold.profile),
            label: 'Profil',
          ),
        ],
      ),
    ));
  }
}
