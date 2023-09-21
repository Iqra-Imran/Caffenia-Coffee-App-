import 'package:caffeina/components/profile_tab.dart';
import 'package:caffeina/constants/app_colors.dart';
import 'package:caffeina/constants/my_images.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('My Profile'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(backgroundImage: AssetImage(AppImages.profile_img),radius: 50,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 22,),
                  Text('Iqra',style: TextStyle(color: AppColors.starColor,fontSize: 24)),
                  SizedBox(height: 5,),
                  Text('iqraimran074@gmail.com',style: TextStyle(fontSize: 14),),
                  SizedBox(height: 16,),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(color: AppColors.starColor,borderRadius: BorderRadius.circular(8)),
                      height: 35,width: 110,
                      child: Center(child: Text('Edit profile')),),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          ProfileTabs(icon: Icon(Icons.favorite,color: AppColors.starColor,), txt: 'Fav'),
          ProfileTabs(icon: Icon(Icons.download,color: AppColors.starColor,), txt: 'Download'),
          Divider(color: AppColors.hintTextColor,indent: 20,endIndent: 20,height: 25,),
          ProfileTabs(icon: Icon(Icons.location_on,color: AppColors.starColor,), txt: 'Location'),
          ProfileTabs(icon: Icon(Icons.menu_book,color: AppColors.starColor,), txt: 'Menu'),
          ProfileTabs(icon: Icon(Icons.display_settings_outlined,color: AppColors.starColor,), txt: 'Display'),
          Divider(color: AppColors.hintTextColor,indent: 20,endIndent: 20,height: 25,),
          ProfileTabs(icon: Icon(Icons.delete,color: AppColors.starColor,), txt: 'Clear cache'),
          ProfileTabs(icon: Icon(Icons.timelapse_rounded,color: AppColors.starColor,), txt: 'Clear History'),
          ProfileTabs(icon: Icon(Icons.logout,color: AppColors.starColor,), txt: 'Log Out'),
        ],
      ),
    ) ;
  }
}
