import 'package:get/get.dart';
import 'package:mvctest/app/views/home_page.dart';

import 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
        name: Routes.home, 
        page: () => HomePage(),

      )
    ];
}
