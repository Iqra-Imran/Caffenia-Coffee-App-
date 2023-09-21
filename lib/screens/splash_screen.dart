import 'package:caffeina/constants/app_colors.dart';
import 'package:caffeina/constants/my_images.dart';
import 'package:caffeina/screens/home_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }
 _navigateToHome()async{
   await Future.delayed(Duration(milliseconds: 1500),  () {});
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 240.0,left: 90),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(100), // Image radius
                child: Image.asset(AppImages.six, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 20,),
            Text('Caffenia',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: AppColors.starColor),)
          ],
        ),
      )
    );
  }
}
