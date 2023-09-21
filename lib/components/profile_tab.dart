import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ProfileTabs extends StatelessWidget {
  final Icon icon;
  final String txt;
   ProfileTabs({super.key,required this.icon,required this.txt});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: icon,
      ),
      title: Text(txt),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Icon(Icons.arrow_forward_ios_sharp,color: AppColors.starColor,),
      ),
    );
  }
}
