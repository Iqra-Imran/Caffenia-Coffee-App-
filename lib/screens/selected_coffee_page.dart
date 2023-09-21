import 'package:caffeina/models/cart_model.dart';
import 'package:caffeina/cart_provider.dart';
import 'package:caffeina/components/star_icon.dart';
import 'package:caffeina/constants/my_images.dart';
import 'package:caffeina/db_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/app_colors.dart';

class SelectedCoffeePage extends StatelessWidget {
  DBHelper dbHelper = DBHelper();
  final ImageProvider img;
  String text;
  String price;
   SelectedCoffeePage({super.key,required this.img,required this.text,required this.price});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(210),bottomLeft: Radius.circular(90)),
              child: Container(
                width: 400,
                height: 350,
                decoration: BoxDecoration(image: DecorationImage(image: img,fit: BoxFit.cover)),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  // SizedBox(width: 160,),
                  // Text('100 RS',style: TextStyle(color: AppColors.starColor),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 8),
              child: Row(
                children: [
                  Stars(),
                  SizedBox(width: 10,),
                  Text((price),style: TextStyle(fontSize: 11),),
                ],
              ),
            ),
            SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text('Product Info',style: TextStyle(color: AppColors.starColor,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,top: 10),
              child: Text('Coffee is a dark drink to make you active.\nIt contain caffeine in it.It is made of coffee beans.',
                style: TextStyle(color: AppColors.whiteColor),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  Text('Quanitity',style: TextStyle(color: AppColors.starColor,fontSize: 14),),
                  SizedBox(width: 80,),
                  IconButton( onPressed: () {  }, icon: Icon(Icons.remove,size: 20,),splashRadius: 25.0,),

                 Container(
                     decoration: BoxDecoration(border: Border.all(color: AppColors.starColor)),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text('Manage quantity',style: TextStyle(fontSize: 10),),
                     )),

                  IconButton( onPressed: () {  }, icon: Icon(Icons.add,size: 20,),splashRadius: 25.0,),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Center(
              child: InkWell(
                onTap: (){
                // dbHelper!.insert(
                //   Cart(id: index,
                //       images: images,
                //       coffeeNames: text[index],
                //       coffeePrices: price[index],
                //       quantity: quantity,
                //       initPrice: price[index]),
                // );
                },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: AppColors.starColor),
                  height: 50,
                  width: 300,
                  child: Center(child: Text('Add To Cart',
                      style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 24))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
