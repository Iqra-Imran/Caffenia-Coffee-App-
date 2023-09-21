import 'package:caffeina/components/star_icon.dart';
import 'package:caffeina/constants/app_colors.dart';
import 'package:caffeina/constants/my_images.dart';
import 'package:caffeina/screens/selected_coffee_page.dart';
import 'package:flutter/material.dart';

class HomeGridView extends StatelessWidget {
   HomeGridView({super.key});
List images=[
  AssetImage(AppImages.one),
  AssetImage(AppImages.two),
  AssetImage(AppImages.three),
  AssetImage(AppImages.four),
  AssetImage(AppImages.five),
  AssetImage(AppImages.six),
  AssetImage(AppImages.seven),
  AssetImage(AppImages.eight),
  AssetImage(AppImages.nine),
  AssetImage(AppImages.ten),
  AssetImage(AppImages.eleven),
  AssetImage(AppImages.one),
  AssetImage(AppImages.thirteen),
  AssetImage(AppImages.fourteen),
  AssetImage(AppImages.fifteen),
  AssetImage(AppImages.sixteen),
];
List hotCoffeNames=[
  'Caramel Delight Coffee',
  'Hazelnut Heaven Coffee',
  'Mocha Madness Coffee',
  'Vanilla Dream \nCoffee',
 'Espresso Euphoria Coffee',
  'Irish Cream Bliss Coffee',
 'Cinnamon Swirl Coffee',
  'Coconut Caramel Coffee',
  'Almond Amaretto Coffee',
  'Pumpkin Spice Coffee',
  'Dark Chocolate Coffee',
  'Honey Lavender Coffee',
  'Maple Pecan \nCoffee',
  'Gingerbread Delight Coffee',
  'Toasted Marshmallow Coffee',
  'Salted Caramel Coffee',
];
List hotCoffeePrices=[
  '139 RS',
  '180 RS',
  '219 RS',
  '479 RS',
  '639 RS',
  '179 RS',
  '259 RS',
  '329 RS',
  '719 RS',
  '929 RS',
  '539 RS',
  '399 RS',
  '689 RS',
  '149 RS',
  '299 RS',
  '359 RS',
];
  @override
  Widget build(BuildContext context) {

    return  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio: 1/1.3,crossAxisSpacing: 2,mainAxisSpacing: 20
        ),
        itemCount: images.length,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectedCoffeePage(img: images[index],
                text: hotCoffeNames[index], price: hotCoffeePrices[index],)));
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
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image(image: images[index],fit: BoxFit.cover,height: 100,width: 140,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(hotCoffeNames[index], textAlign: TextAlign.left,
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
                      Text(hotCoffeePrices[index],style: TextStyle(fontSize: 12),),
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
