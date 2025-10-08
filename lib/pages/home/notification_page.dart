import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../widgets/app_style.dart';
import '../../widgets/custom_arrow.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppStyle.background,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomArrow(title: "Notifikasi"),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppStyle.paddingL,
                ),
                child: TabBar(
                  indicatorColor: AppStyle.primary1,
                  labelColor: AppStyle.primary1,
                  unselectedLabelColor: AppStyle.black300,
                  labelStyle: AppStyle.caption1(color: AppStyle.primary1),
                  tabs: const [
                    Tab(text: "Semua"),
                    Tab(text: "Belum Dibaca"),
                  ],
                ),
              ),
              SizedBox(height: AppStyle.spaceS),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildNotificationList(),
                    _buildNotificationList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationList() {
    final List<Map<String, String>> notifications = [
      {
        'title': 'Promo Tiket Murah Mudik 2025',
        'message':
            'Yuk segera amankan tiket mudik mu sekarang juga sebelum kehabisan...',
        'time': '10:00',
      },
      {
        'title': 'Tiket anda sudah dibayar lunas',
        'message':
            'Terimakasih sudah membeli tiket di new shantika nikmati perjalanannya.',
        'time': '10:00',
      },
      {
        'title': 'Segara Bayar Tiket yang sudah anda pesan',
        'message': 'Bayar tiket anda dan nikmati perjalanan bus new shantika',
        'time': '10:00',
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppStyle.paddingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "8 Februari 2024",
                  style: AppStyle.caption1(color: AppStyle.black500),
                ),
                Text(
                  "Baca Semua",
                  style: AppStyle.caption1(color: AppStyle.primary1),
                ),
              ],
            ),
            SizedBox(height: AppStyle.spaceS),
            ...notifications.map(
              (notif) => _buildNotifItem(
                title: notif['title']!,
                message: notif['message']!,
                time: notif['time']!,
              ),
            ),
            SizedBox(height: AppStyle.spaceM),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "7 Februari 2024",
                  style: AppStyle.caption1(color: AppStyle.black500),
                ),
                Text(
                  "Baca Semua",
                  style: AppStyle.caption1(color: AppStyle.primary1),
                ),
              ],
            ),
            SizedBox(height: AppStyle.spaceS),
            ...notifications.map(
              (notif) => _buildNotifItem(
                title: notif['title']!,
                message: notif['message']!,
                time: notif['time']!,
              ),
            ),
            SizedBox(height: AppStyle.spaceXL),
          ],
        ),
      ),
    );
  }

  Widget _buildNotifItem({
    required String title,
    required String message,
    required String time,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppStyle.paddingXL,
        horizontal: AppStyle.paddingM,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppStyle.black200,
            width: 1,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Bootstrap.ticket_perforated,
            color: AppStyle.primary1,
            size: AppStyle.iconM,
          ),
          SizedBox(width: AppStyle.spaceS),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyle.paragraph3(color: AppStyle.black500),
                ),
                SizedBox(height: 4),
                Text(
                  message,
                  style: AppStyle.paragraph3(color: AppStyle.text),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: AppStyle.spaceS),
          Text(
            time,
            style: AppStyle.paragraph3(color: AppStyle.primary1),
          ),
        ],
      ),
    );
  }
}
