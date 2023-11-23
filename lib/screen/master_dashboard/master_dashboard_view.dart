import 'package:flutter/material.dart';
import 'package:project22/screen/master_dashboard/components/chart_component.dart';
import 'package:project22/screen/master_dashboard/components/notification_section.dart';
import 'package:project22/screen/master_dashboard/components/previous_event.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_field/textformfield.dart';

import '../../utils/app_colors/colors.dart';
import '../../utils/app_constants/app_constant.dart';
import '../../utils/app_images/app_images.dart';
import 'components/coming_events_container.dart';
import 'components/last_events_graph.dart';

class MasterDashboardView extends StatelessWidget {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Dashboard',
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                    Row(
                      children: [
                        DoughnutChartWidget(
                          topText: 'Invitations',
                        ),
                        DoughnutChartWidget(
                          topText: 'Registration',
                        ),
                        DoughnutChartWidget(
                          topText: 'Confirm Attendees',
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    CustomText(
                      text: 'Previous Events',
                      fontSize: 26,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        PreviousEvent(
                            imgUrl: AppImages.event,
                            eventName: 'Event Name',
                            eventDetail: AppTexts.eventDetail),
                        PreviousEvent(
                            imgUrl: AppImages.event1,
                            eventName: 'Event Name',
                            eventDetail: AppTexts.eventDetail),
                        PreviousEvent(
                            imgUrl: AppImages.event2,
                            eventName: 'Event Name',
                            eventDetail: AppTexts.eventDetail),
                      ],
                    ),
                    SizedBox(height: 30),
                    CustomText(
                      text: 'Coming Up Events',
                      color: AppColors.primary,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(child: ComingEventsContainer()),
                        ComingEventsContainer(),
                        ComingEventsContainer(),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Notifications',
                      color: AppColors.primary,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                    NotificationSection(),
                    SizedBox(
                      height: 20,
                    ),
                    CustomText(
                      text: 'Last Events',
                      color: AppColors.primary,
                      fontSize: 26,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                    ),
                    LastEventsGraph(),
                    SizedBox(height: 10),
                    CustomText(
                      text: 'Last Successful Events',
                      color: AppColors.primary,
                      fontSize: 16,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
