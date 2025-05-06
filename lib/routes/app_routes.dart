import 'package:get/get.dart';
import 'package:qwal_talabak_session1/features/sign_up/view/sign_up_screen.dart';
import 'package:qwal_talabak_session1/features/splash/controller/splash_controller.dart';
import 'package:qwal_talabak_session1/routes/app_pages.dart';

import '../features/splash/view/splash_screen.dart';

appPages() => [
      GetPage(name: AppRoutes().splash, page: () => SplashScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => SplashController());
      })),
      GetPage(name: AppRoutes().signUp, page: () => SignUp())
    ];
