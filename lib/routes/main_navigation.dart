import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:shantika_pkl/pages/chat/chat_page.dart';
import 'package:shantika_pkl/pages/home/home_page.dart';
import 'package:shantika_pkl/pages/pesan/pesan_page.dart';
import 'package:shantika_pkl/pages/profile/profile_page.dart';
import 'package:shantika_pkl/widgets/app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../controller/nav_controller.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final NavController navController = Get.put(NavController());

    final List<Widget> pages = const [
      HomePage(),
      ChatPage(),
      PesanPage(),
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
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              colorFilter: ColorFilter.mode(AppStyle.black200, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/home_active.svg',
              colorFilter: ColorFilter.mode(AppStyle.primary2, BlendMode.srcIn),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/chat.svg',
              colorFilter: ColorFilter.mode(AppStyle.black200, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/chat_active.svg',
              colorFilter: ColorFilter.mode(AppStyle.primary2, BlendMode.srcIn),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/ticket.svg',
              colorFilter: ColorFilter.mode(AppStyle.black200, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/ticket_active.svg',
              colorFilter: ColorFilter.mode(AppStyle.primary2, BlendMode.srcIn),
            ),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/profile.svg',
              colorFilter: ColorFilter.mode(AppStyle.black200, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/profile_active.svg',
              colorFilter: ColorFilter.mode(AppStyle.primary2, BlendMode.srcIn),
            ),
            label: 'Profil',
          ),
        ],
      ),

    ));
  }
}
