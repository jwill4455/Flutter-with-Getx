import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutterwithgetx/views/graph.dart';
import 'package:flutterwithgetx/views/history.dart';
import 'package:get/get.dart';

import 'add_record.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentTab = 0;
  Widget _currentScreen = const GraphScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Get.to(()=> const AddRecordView());
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: Get.height / 12,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        backgroundColor: Colors.black,
        icons: const [Icons.show_chart, Icons.history],
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        iconSize: 30,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        activeIndex: _currentTab,
        onTap: (int a) {
          setState(() {
            _currentTab = a;
            _currentScreen =
                (a == 0) ? const GraphScreen() : const HistoryScreen();
          });
        },
      ),
    );
  }
}
