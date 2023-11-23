import 'package:flutter/material.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/group_container.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/horizontal_container.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/widget/app_bar/appbar.dart';

import '../../utils/app_colors/colors.dart';
import '../../widget/custom_text/customtext.dart';

class IdeasBriefing extends StatelessWidget {
  const IdeasBriefing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyAppBar(),
              SizedBox(height: 30),
              CustomText(
                text: 'Circle Leader Vote',
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
                fontFamily: 'Montserrat',
              ),
              SizedBox(height: 10),
              GroupContainer(groupNo: 'Group No 1'),
              IdeaContainer(text: AppTexts.customLoremText),
              SizedBox(height: 30),
              GroupContainer(groupNo: 'Circle Leader Briefing'),
              IdeaContainer(text: AppTexts.customLoremText),
            ],
          ),
        ),
      ),
    );
  }
}
