import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shantika_pkl/pages/profile/about_us_page.dart';
import 'package:shantika_pkl/pages/profile/faq_page.dart';
import 'package:shantika_pkl/pages/profile/notification.dart';
import 'package:shantika_pkl/pages/profile/personal_info.dart';
import 'package:shantika_pkl/pages/profile/policy_page.dart';
import 'package:shantika_pkl/pages/profile/term_condition_page.dart';
import '../pages/chat/chat_page.dart';
import '../pages/home/home_page.dart';
import '../pages/pesan/pesan_page.dart';
import '../pages/profile/profile_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: '/home', page: () => const HomePage()),
    GetPage(name: '/chat', page: () => const ChatPage()),
    GetPage(name: '/pesan', page: () => const PesanPage()),
    GetPage(name: '/profile', page: () => const ProfilePage()),
    GetPage(name: '/notifikasi', page: () => const Notification()),
    GetPage(name: '/informasi_pribadi', page: () => const PersonalInfo()),
    GetPage(name: '/tentang_kami', page: () => const AboutUsPage()),
    GetPage(name: '/kebijakan', page: () => const PolicyPage()),
    GetPage(name: '/syarat', page: () => const TermConditionPage()),
    GetPage(name: '/faq', page: () => const FaqPage()),
    GetPage(name: '/rating', page: () => const Notification()),
  ];
}