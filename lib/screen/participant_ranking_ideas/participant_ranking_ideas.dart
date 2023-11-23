import 'package:flutter/material.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/group_container.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/horizontal_container.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/ranking_ideas_widget.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/icon_container/icon_container.dart';

import '../../utils/app_colors/colors.dart';
import '../../widget/custom_text/customtext.dart';

class ParticipantRankingIdeas extends StatelessWidget {
  const ParticipantRankingIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(),
              SizedBox(height: 30),
              CustomText(
                text: 'Ranking the Top Ideas',
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
                fontFamily: 'Montserrat',
              ),
              SizedBox(height: 25),
              GroupContainer(groupNo: "Group No 1"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 500,
                          child: HorizontalContainer(),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.textGreyColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          RankingIdeasWidget(),
                          RankingIdeasWidget(),
                          RankingIdeasWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
