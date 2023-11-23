import 'package:flutter/material.dart';
import 'package:project22/main.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import '../../utils/app_colors/colors.dart';
import '../../utils/app_constants/app_constant.dart';
import '../../widget/custom_text/customtext.dart';
import 'components/group_container.dart';
import 'components/horizontal_container.dart';

class ParticipantAllCircleIdeas extends StatelessWidget {
  const ParticipantAllCircleIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyAppBar(),
            SizedBox(height: 30),
            CustomText(
              text: 'All Circle’s Top Ideas',
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
              fontFamily: 'Montserrat',
            ),
            SizedBox(height: 20),
            ListView.builder(
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GroupContainer(groupNo: 'Group No ' + index.toString()),
                      IdeaContainer(
                        text: AppTexts.customLoremText,
                      ),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
