import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/eventscontainer.dart';

import '../../widget/app_bar/appbar.dart';
import '../../../widget/graph/data.dart';
import '../../../widget/graph/graph.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<int> graph = [45, 20, 67, 34, 65, 78, 53, 80, 66, 76];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      body: Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08,left: MediaQuery.of(context).size.width * 0.02),
        child:  SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: 'DashBoard',fontSize: 24,fontWeight: FontWeight.w700,letterSpacing: 3,),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                         height: MediaQuery.of(context).size.height * 0.2,
                         child: const Image(image: AssetImage('images/Frame.png'),
                           fit: BoxFit.contain,
                         ),
                       ),
                        SizedBox(
                         height: MediaQuery.of(context).size.height * 0.2,
                          child: const Image(image: AssetImage('images/Frame.png'),
                           fit: BoxFit.contain,
                         ),
                       ),
                        SizedBox(
                         height: MediaQuery.of(context).size.height * 0.2,

                          child: const Image(image: AssetImage('images/Frame.png'),
                           fit: BoxFit.contain,
                         ),
                       ),

                                        ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.039,),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child:  CustomText(text: 'Previous Events',fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 2,),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.029,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EventsContainer(imageUrl: 'images/event.png'),
                        EventsContainer(imageUrl: 'images/event1.png'),
                        EventsContainer(imageUrl: 'images/event2.png'),


                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.039,),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: 'Coming Up Events',fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 2,),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.029,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       EventsContainer2(),
                       EventsContainer2(),
                       EventsContainer2(),


                      ],
                    ),

                  ],
                ),
              ),

                 Expanded(
                child:  Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      const Align(
                        alignment: Alignment.centerLeft,
                        child:  CustomText(text: 'Notifications',fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 2,),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.029,),

                      Material(
                        shadowColor: Colors.black,
                        elevation: 2,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        child: const Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('images/profile.png'),
                              ),
                              title: Text('Lorem Ipsum is simply dummy text of the printing.',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 13),),
                              subtitle: Text('Date : Time',style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w400,fontSize: 11),),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('images/profile.png'),
                              ),
                              title: Text('Lorem Ipsum is simply dummy text of the printing.',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 13),),
                              subtitle: Text('Date : Time',style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w400,fontSize: 11),),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('images/profile.png'),
                              ),
                              title: Text('Lorem Ipsum is simply dummy text of the printing.',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 13),),
                              subtitle: Text('Date : Time',style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w400,fontSize: 11),),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('images/profile.png'),
                              ),
                              title: Text('Lorem Ipsum is simply dummy text of the printing.',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 13),),
                              subtitle: Text('Date : Time',style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w400,fontSize: 11),),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('images/profile.png'),
                              ),
                              title: Text('Lorem Ipsum is simply dummy text of the printing.',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 13),),
                              subtitle: Text('Date : Time',style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w400,fontSize: 11),),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('images/profile.png'),
                              ),
                              title: Text('Lorem Ipsum is simply dummy text of the printing.',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 13),),
                              subtitle: Text('Date : Time',style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w400,fontSize: 11),),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 60,),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child:  CustomText(text: 'Last Events',fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 2,),
                      ),

                      const SizedBox(height: 20,),

                      Material(
                        color: Colors.white,
                        elevation: 2,
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                          child: Graph(points:graphData,),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}