import 'package:get/get_navigation/src/routes/get_route.dart';
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
  ];
}