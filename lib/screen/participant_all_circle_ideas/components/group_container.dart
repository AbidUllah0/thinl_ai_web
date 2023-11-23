import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class GroupContainer extends StatelessWidget {
  String groupNo;

  GroupContainer({required this.groupNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: CustomText(
        text: groupNo,
        fontWeight: FontWeight.w700,
        fontFamily: 'Source Sans Pro',
        fontSize: 18,
        color: AppColors.primary,
      ),
    );
  }
}