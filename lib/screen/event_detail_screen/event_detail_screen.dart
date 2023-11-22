import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_media_query/custom_media_qeury.dart';
import 'package:project22/widget/custom_text_2/custom_text_2.dart';
import 'package:project22/widget/stepper_widget.dart/stepper_widget.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int currentValue = 0;
    return Scaffold(
        appBar: MyAppBar(),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: CustomMediaQuery.responsiveWidth(2),
              vertical: CustomMediaQuery.responsiveHeight(5)),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 35),
                child: CustomTextTwo(
                  text: "Event Details",
                  textStyle: TextStyle(
                    color: AppColors.primary,
                    fontSize: 28,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
               height: 200,
               width: double.infinity,
                child: StepperScreen())
            ]),
          ),
        ));
  }
}
