import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_field/textformfield.dart';

import 'components/message_text.dart';

class ParticipantGroupChat extends StatefulWidget {
  @override
  State<ParticipantGroupChat> createState() => _ParticipantGroupChatState();
}

class _ParticipantGroupChatState extends State<ParticipantGroupChat> {
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyAppBar(),
          CustomText(
            text: 'Group Chat',
            fontSize: 28,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat',
            color: AppColors.primary,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(
                color: AppColors.borderColor,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: MessageText(),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                          hintText: 'Enter Your Message',
                          controller: _messageController,
                          suffixIcon: Icons.send,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
