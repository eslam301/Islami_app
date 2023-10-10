import 'package:flutter/material.dart';
import 'package:my_islami_app/modules/bodys/quran_view.dart';
import 'package:my_islami_app/modules/bodys/sebha_view.dart';

import '../modules/bodys/hadeth_view.dart';
import '../modules/bodys/radio_view.dart';
import '../modules/bodys/setting_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "homeLayout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    const HadethView(),
    SebhaView(),
    const RadioView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/images/Light_background.png"))),
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'إسلامي',
              ),
            ),
            body: screens[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("Assets/images/quran_icon.png")),
                  label: 'قرأن',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("Assets/images/ahadeth_icon.png")),
                  label: 'احاديث',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("Assets/images/sebha_icon.png")),
                  label: 'سيبحة',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("Assets/images/radio_icon.png")),
                  label: 'راديو',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'اعدادات',
                )
              ],
            )));
  }
}
