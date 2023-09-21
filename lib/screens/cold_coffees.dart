import 'package:caffeina/screens/selected_coffee_page.dart';
import 'package:flutter/material.dart';

import '../components/star_icon.dart';
import '../constants/app_colors.dart';
import '../constants/my_images.dart';

class ColdCoffee extends StatelessWidget {
  ColdCoffee({super.key});
  List images=[
    AssetImage(AppImages.seventeen),
    AssetImage(AppImages.eighteen),
    AssetImage(AppImages.ninteen),
    AssetImage(AppImages.twenty),
    AssetImage(AppImages.twenty_one),
    AssetImage(AppImages.twenty_two),
    AssetImage(AppImages.twenty_three),
    AssetImage(AppImages.twenty_four),
    AssetImage(AppImages.twenty_five),
    AssetImage(AppImages.twenty_six),
    AssetImage(AppImages.twenty_seven),
    AssetImage(AppImages.twenty_eight),
    AssetImage(AppImages.twenty_nine),
    AssetImage(AppImages.thirty),
    AssetImage(AppImages.thirty_one),
    AssetImage(AppImages.thirty_two),
  ];
  List coldCoffeNames=[
    'Iced Caramel Macchiato',
    'Vanilla Frapucino Coffee',
    'Mocha Madness Frost',
    'Cold Brew Dream Coffee',
    'Coconut Cream Chill Coffee',
    'Java Chip Frosty Coffee',
    'Hazelnut Ice Blast Coffee',
    'Mint Chocolate Freeze',
    'Espresso Frío Coffee',
    'Cinnamon Cold Snap Coffee',
    'Almond Milk Iced Latte',
    'Cookies and Cream Chiller',
    'Tropical Paradise Iced Coffee',
    'Salted Caramel Cooler',
    'Matcha Green Tea Frost',
    'Raspberry White Mocha Chill',
  ];
  List coldCoffeePrices=[
    '256 RS',
    '936 RS',
    '866 RS',
    '776 RS',
    '296 RS',
    '526 RS',
    '236 RS',
    '346 RS',
    '476 RS',
    '586 RS',
    '786 RS',
    '826 RS',
    '146 RS',
    '256 RS',
    '386 RS',
    '496 RS',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 1/1.3,mainAxisSpacing: 20
    ),
        itemCount: images.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectedCoffeePage(img: images[index],
                  text: coldCoffeNames[index], price: coldCoffeePrices[index],)));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.listColor,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image(image: images[index],fit: BoxFit.fill,height: 100,width: 140,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(coldCoffeNames[index], textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppColors.whiteColor),),
                    ),
                    SizedBox(height: 15,),
                    Stars(),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 15,),
                        Text(coldCoffeePrices[index],style: TextStyle(fontSize: 12),),
                        SizedBox(width: 80,),
                        Icon(Icons.favorite,size: 12,color: AppColors.starColor,)

                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
