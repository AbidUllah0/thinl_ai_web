import 'package:flutter/material.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/group_container.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/horizontal_container.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/widget/app_bar/appbar.dart';

class EventTopIdea extends StatelessWidget {
  const EventTopIdea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              MyAppBar(),
              SizedBox(height: 30),
              GroupContainer(groupNo: 'Group No 8'),
              SizedBox(height: 20),
              IdeaContainer(text: AppTexts.customLoremText),
            ],
          ),
        ),
      ),
    );
  }
}
