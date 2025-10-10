import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shantika_pkl/widgets/custom_card.dart';
import '../../widgets/app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: AppStyle.background,
            boxShadow: [
              BoxShadow(
                color: AppStyle.black100,
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Center(
              child: Text(
                "Chat",
                style: AppStyle.heading1(color: AppStyle.black500),
              ),
            ),
          ),
        ),
      ),
      body: _buildChatList(),
    );
  }

  Widget _buildChatList() {
    final List<ChatItem> chatItems = [
      ChatItem(
        title: "Chat CS Pusat New Shantika",
        svgAsset: 'assets/images/telepon.svg',
      ),
      ChatItem(
        title: "Whatsapp Agen Semarang",
        svgAsset: 'assets/images/whatsapp.svg',
      ),
      ChatItem(
        title: "Whatsapp Agen Jepara",
        svgAsset: 'assets/images/whatsapp.svg',
      ),
      ChatItem(
        title: "Whatsapp Agen Kudus",
        svgAsset: 'assets/images/whatsapp.svg',
      ),
      ChatItem(
        title: "Facebook Agen Semarang",
        svgAsset: 'assets/images/facebook.svg',
      ),
      ChatItem(
        title: "Facebook Agen Jepara",
        svgAsset: 'assets/images/facebook.svg',
      ),
      ChatItem(
        title: "Facebook Agen Kudus",
        svgAsset: 'assets/images/facebook.svg',
      ),
    ];

    return ListView.builder(
      padding: const EdgeInsets.only(
        top: AppStyle.paddingM,
        bottom: AppStyle.paddingM,
      ),
      itemCount: chatItems.length,
      itemBuilder: (context, index) {
        final item = chatItems[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppStyle.paddingXL,
            vertical: AppStyle.paddingS,
          ),
          child: CustomCardContainer(
            height: 68,
            boxShadow: [
              BoxShadow(
                color: AppStyle.black100,
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
            child: Row(
              children: [
                SvgPicture.asset(
                  item.svgAsset,
                  width: AppStyle.iconXXL,
                  height: AppStyle.iconXXL,
                ),
                SizedBox(width: AppStyle.paddingM),
                Expanded(
                  child: Text(
                    item.title,
                    style: AppStyle.caption1(color: AppStyle.black500),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ChatItem {
  final String title;
  final String svgAsset;

  ChatItem({required this.title, required this.svgAsset});
}
