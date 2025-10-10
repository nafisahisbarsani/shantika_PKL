import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shantika_pkl/pages/pesan/detail_pesan_page.dart';
import 'package:shantika_pkl/pages/pesan/riwayat_page.dart';
import '../../widgets/app_style.dart';
import '../../widgets/custom_card.dart';

class PesanPage extends StatelessWidget {
  const PesanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.background,
      appBar: _header(),
      body: _buildHistoryView(),
    );
  }

  PreferredSizeWidget _header() {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight + 4),
      child: Container(
        decoration: BoxDecoration(
          color: AppStyle.background,
          boxShadow: [
            BoxShadow(
              color: AppStyle.black100,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Pesanan",
            style: AppStyle.heading1(color: AppStyle.black500),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: AppStyle.paddingL),
              child: IconButton(
                icon: Icon(Icons.history_outlined, color: AppStyle.black400),
                onPressed: () {
                  Get.to(() => RiwayatPage());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryView() {
    final List<Map<String, dynamic>> orders = [
      {
        'bus': 'Bus 10 • Executive Big Top',
        'date': '11 February 2025 • 20:30',
        'origin': 'Krapyak – Semarang',
        'originTime': '05:30',
        'destination': 'Gejayan – Sieman',
        'destinationTime': '09:30',
        'price': 'Rp230.000',
        'status': 'Lunas',
        'statusColor': AppStyle.success,
      },
      {
        'bus': 'Bus 8 • Executive Medium',
        'date': '12 February 2025 • 14:00',
        'origin': 'Semarang – Jakarta',
        'originTime': '08:00',
        'destination': 'Grogol – Jakarta',
        'destinationTime': '15:00',
        'price': 'Rp180.000',
        'status': 'Sudah Ditukarkan',
        'statusColor': AppStyle.primary6,
      },
      {
        'bus': 'Bus 12 • Luxury Suite',
        'date': '15 February 2025 • 22:15',
        'origin': 'Yogyakarta – Bandung',
        'originTime': '06:45',
        'destination': 'Cihampelas – Bandung',
        'destinationTime': '12:30',
        'price': 'Rp350.000',
        'status': 'Sudah Direview',
        'statusColor': AppStyle.primary2,
      },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        padding: EdgeInsets.only(top: AppStyle.spaceL, bottom: AppStyle.spaceL),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return CustomCardContainer(
            onTap:  () => Get.to(() => DetailPesanPage()),
            padding: EdgeInsets.all(AppStyle.paddingM),
            margin: EdgeInsets.only(bottom: AppStyle.spaceS),
            borderColor: AppStyle.black100,
            statusText: order['status'],
            statusColor: order['statusColor'],
            statusTextColor: order['statusTextColor'],
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          order['bus'],
                          style: AppStyle.caption3(color: AppStyle.black500),
                        ),
                      ],
                    ),
                    Text(
                      order['date'],
                      style: AppStyle.paragraph3(color: AppStyle.black400),
                    ),
                    SizedBox(height: AppStyle.spaceS),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppStyle.black400,
                              size: 20,
                            ),
                            SizedBox(width: AppStyle.spaceS),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    order['origin'],
                                    style: AppStyle.paragraph3(
                                      color: AppStyle.black500,
                                    ),
                                  ),
                                  Text(
                                    order['originTime'],
                                    style: AppStyle.menu2(
                                      color: AppStyle.black400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppStyle.spaceL),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppStyle.primary1,
                              size: 20,
                            ),
                            SizedBox(width: AppStyle.spaceS),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    order['destination'],
                                    style: AppStyle.paragraph3(
                                      color: AppStyle.black500,
                                    ),
                                  ),
                                  Text(
                                    order['destinationTime'],
                                    style: AppStyle.menu2(
                                      color: AppStyle.black400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: AppStyle.spaceS),
                  ],
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Text(
                    order['price'],
                    style: AppStyle.heading2(color: AppStyle.primary1),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

}
