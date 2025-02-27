import 'package:flutter/material.dart';
import 'controllers/count_controller.dart';
import 'controllers/home_controller.dart';
import 'views/home/home_page.dart';
import 'core/theme.dart';
import 'package:provider/provider.dart';
import 'repositories/user_repository.dart';
import 'core/network/api_service.dart';
import 'core/network/dio_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountController()), 
        ChangeNotifierProvider(
          create: (_) => HomeController(
            UserRepository(ApiService(DioClient())),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coba Flutter',
        theme: AppTheme.lightTheme,
        home: const HomePage(),
      ),
    );
  }
}
