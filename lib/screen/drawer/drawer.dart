import 'package:flutter/material.dart';
import '../../utils/app_images/app_images.dart';
import '../../utils/app_colors/colors.dart';
import '../master_dashboard/master_dashboard_view.dart';
import '../participant_ai_assistant/participant_ai_assistant.dart';
import '../participant_all_circle_ideas/participant_al_circle_ideas.dart';
import '../participant_circle_leader_vote/ideas_briefing.dart';
import '../participant_event_top_idea/event_top_idea.dart';
import '../participant_group_chat/participant_group_chat.dart';
import '../participant_ranking_ideas/participant_ranking_ideas.dart';
import '../participant_top_fice_steps/top_five_steps.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    MasterDashboardView(),
    Container(color: Colors.green),
    Container(color: Colors.green),
    Container(color: Colors.green),
    Container(color: Colors.green),
    Container(color: Colors.green),
    ParticipantAiAssistant(),
    Container(color: Colors.blue),
    ParticipantGroupChat(),
    ParticipantRankingIdeas(),
    IdeasBriefing(),
    ParticipantAllCircleIdeas(),
    Container(color: Colors.green),
    Container(color: Colors.green),
    EventTopIdea(),
    TopFiveSteps(),
    Container(color: Colors.yellow),
    Container(color: Colors.green),
    Container(color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Custom Drawer
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: double.infinity,
            color: Colors.white30,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: 'THINK.',
                              style: TextStyle(
                                  fontSize: 31,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                              text: 'ai',
                              style: TextStyle(
                                  fontSize: 31,
                                  color: AppColors.secondary,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  buildDrawerItem(
                      index: 0, image: AppImages.dashBoard, title: "Dashboard"),
                  buildDrawerItem(
                      index: 1, image: AppImages.template, title: "Template"),
                  buildDrawerItem(
                      index: 2,
                      image: AppImages.invitation,
                      title: "Invitation"),
                  buildDrawerItem(
                      index: 3,
                      image: AppImages.registration,
                      title: "Registration"),
                  buildDrawerItem(
                      index: 4, image: AppImages.profile, title: "Profile"),
                  buildDrawerItem(
                      index: 5,
                      image: AppImages.eventDetail,
                      title: "Event Detail"),
                  buildDrawerItem(
                      index: 6,
                      image: AppImages.aiAssistant,
                      title: "AI Assistant"),
                  buildDrawerItem(
                      index: 7,
                      image: AppImages.circlesCreate,
                      title: "Circles Create"),
                  buildDrawerItem(
                      index: 8,
                      image: AppImages.circlesDetail,
                      title: "Circles Details"),
                  buildDrawerItem(
                      index: 9,
                      image: AppImages.rankingIdeas,
                      title: "Ranking Ideas"),
                  buildDrawerItem(
                      index: 10,
                      image: AppImages.ideasBriefing,
                      title: "Ideas Briefing"),
                  buildDrawerItem(
                      index: 11,
                      image: AppImages.allCirclesIdeas,
                      title: "All Circles Ideas"),
                  buildDrawerItem(
                      index: 12,
                      image: AppImages.genAIIdea,
                      title: "Gen AI Idea"),
                  buildDrawerItem(
                      index: 13, image: AppImages.eventDay, title: "Event Day"),
                  buildDrawerItem(
                      index: 14,
                      image: AppImages.report,
                      title: "Event’s Top Idea"),
                  buildDrawerItem(
                      index: 15,
                      image: AppImages.ideasDiscuss,
                      title: "5 Steps "),
                  buildDrawerItem(
                      index: 16,
                      image: AppImages.benchmarks,
                      title: "Report Form"),
                  const SizedBox(
                    height: 196,
                  ),
                  buildDrawerItem(
                      index: 17, image: AppImages.settings, title: "Settings"),
                  buildDrawerItem(
                      index: 18, image: AppImages.logout, title: "Log Out"),
                ],
              ),
            ),
          ),

          // Right Content Area
          Expanded(
            flex: 2,
            child: _screens[_selectedIndex],
          ),
        ],
      ),
    );
  }

  Widget buildDrawerItem(
      {required int index,
      required String title,
      required String image,
      IconData? trailingIcon}) {
    bool isSelected = _selectedIndex == index;
    Color backgroundColor = isSelected ? Colors.blue : Colors.white;
    Color textColor = isSelected ? Colors.white : Colors.black;

    return ListTile(
      leading: Image.asset(
        image,
        width: 18,
        height: 18,
        color: _selectedIndex == index ? Colors.white : AppColors.iconColor,
      ),
      trailing: Icon(trailingIcon),
      title: Text(title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: _selectedIndex == index
                ? Colors.white
                : AppColors.textGreyColor,
            fontSize: 16,
            // fontFamily: 'Urbanist',
            fontWeight: FontWeight.w500,
          )),
      tileColor: backgroundColor,
      onTap: () => _selectScreen(index),
    );
  }

  void _selectScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
