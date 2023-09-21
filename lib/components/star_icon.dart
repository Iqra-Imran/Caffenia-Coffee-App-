import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_colors.dart';
import '../constants/app_colors.dart';

class Stars extends StatelessWidget {
  Icon? icon;

   Stars({super.key,this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Row(
        children: [
          Icon(Icons.star,
            color: AppColors.starColor,
            size: 15,
          ),
          Icon(Icons.star,
            color: AppColors.starColor,
            size: 15,
          ),
          Icon(Icons.star,
            color: AppColors.starColor,
            size: 15,
          ), Icon(Icons.star,
            color: AppColors.starColor,
            size: 15,
          ), Icon(Icons.star_half,
            color: AppColors.starColor,
            size: 15,
          ),
        ],
      ),
    );
  }
}
