import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qwal_talabak_session1/routes/app_pages.dart';
import 'package:qwal_talabak_session1/routes/app_routes.dart';
GetStorage getStorage = GetStorage();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetStoragePro (call this before using any GetStoragePro functionality)
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("ar","EG"),
      getPages: appPages(),
      initialRoute: AppRoutes().splash,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}


