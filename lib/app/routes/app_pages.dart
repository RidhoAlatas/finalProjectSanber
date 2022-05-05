import 'package:get/get.dart';

import 'package:digimonapi/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:digimonapi/app/modules/dashboard/views/dashboard_view.dart';
import 'package:digimonapi/app/modules/digilist/bindings/digilist_binding.dart';
import 'package:digimonapi/app/modules/digilist/views/digilist_view.dart';
import 'package:digimonapi/app/modules/favorite/bindings/favorite_binding.dart';
import 'package:digimonapi/app/modules/favorite/views/favorite_view.dart';
import 'package:digimonapi/app/modules/home/bindings/home_binding.dart';
import 'package:digimonapi/app/modules/home/views/home_view.dart';
import 'package:digimonapi/app/modules/showcase/bindings/showcase_binding.dart';
import 'package:digimonapi/app/modules/showcase/views/showcase_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.DIGILIST,
      page: () => DigilistView(),
      binding: DigilistBinding(),
    ),
    GetPage(
      name: _Paths.SHOWCASE,
      page: () => ShowcaseView(),
      binding: ShowcaseBinding(),
    ),
  ];
}
