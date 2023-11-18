import 'package:flutter/material.dart';
import 'package:project22/widget/colors.dart';

class EventsContainer extends StatelessWidget {
  final String imageUrl;

  const EventsContainer({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        shadowColor: Colors.black,
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.16,
          child: Column(
            children: [
              Container(
                  width: double.maxFinite,
                  child: Image(image: AssetImage(imageUrl))),
              Container(
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Events Name',
                            style: TextStyle(color: AppColors.secondary),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class EventsContainer2 extends StatelessWidget {
  const EventsContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        shadowColor: Colors.black,
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.16,
          child: Column(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.only(top: 46,left: 30, right: 30, bottom: 46),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Events Name',
                            style: TextStyle(color: AppColors.secondary),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Date: Time',
                            style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Image(image: AssetImage('images/group.png'))

                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

