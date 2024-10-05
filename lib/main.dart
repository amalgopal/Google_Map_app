import 'package:flutter/material.dart';
import 'package:google_map_app/view/splash/splash_page.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:ScreenSplash() ,
    );
  }
}