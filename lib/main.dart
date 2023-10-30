import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('SWK FOOD'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Beranda'),
                Tab(text: 'Daftar Pesanan'),
                Tab(text: 'Profil'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              HomePage(),
              OrderListPage(),
              ProfilePage(),
            ],
          ),
        ),
      ),
    );
  }
}
