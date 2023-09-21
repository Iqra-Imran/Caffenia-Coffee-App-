import 'package:caffeina/cart_provider.dart';
import 'package:caffeina/screens/home_screen.dart';
import 'package:caffeina/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
       create:(_)=> CartProvider(),
     child:  Builder(builder: (BuildContext context){
       return  MaterialApp(
         theme: ThemeData(brightness: Brightness.dark),
         debugShowCheckedModeBanner: false,
         title: 'Caffeina',
         home: SplashScreen(),
       );
     }),
   );
  }
}

