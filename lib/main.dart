import 'package:flutter/material.dart';
import 'package:review_inherited_widget/app/models/user_model.dart';
import 'package:review_inherited_widget/app/pages/home/home_page.dart';
import 'package:review_inherited_widget/app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: "Bruno Noveli",
      imgAvatar: "https://criticalhits.com.br/wp-content/uploads/2022/06/naruto-uzumaki_qabz-scaled.jpg",
      birthDate: "29/09/2009",
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          "/": (_) => const SplashPage(),
          "/home": (_) => const HomePage(),
        },
      ),
    );
  }
}