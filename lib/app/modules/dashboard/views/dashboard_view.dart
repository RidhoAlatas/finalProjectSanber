import 'package:digimonapi/app/modules/digilist/views/digilist_view.dart';
import 'package:digimonapi/app/modules/favorite/views/favorite_view.dart';
import 'package:digimonapi/app/modules/home/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeView(),
              DigilistView(),
              FavoriteView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          items: [
            _bottomNavigationBarItem(
              icon: CupertinoIcons.home,
              label: "Home",
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.list_dash,
              label: "Digimon List",
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.square_favorites,
              label: "Favorites",
            ),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
