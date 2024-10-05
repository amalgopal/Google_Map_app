import 'package:flutter/material.dart';
import 'package:google_map_app/view/map/map_page.dart';


class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    
    super.initState();
    goToHome(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/destination-concept-international-travel-journey-red-pointer-with-grey-world-map-inside.png'),
      ),
    );
  }
}
goToHome(context)async{
 await Future.delayed(const Duration(seconds: 3));
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const ScreenGoogleMap()));
}