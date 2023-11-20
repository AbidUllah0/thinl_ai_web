// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:think_ai/utils/app_colors/app_colors.dart';
// import 'package:think_ai/utils/app_images/app_images.dart';
// import 'package:think_ai/widget/custom_text/custom_text.dart';
// import 'package:think_ai/widget/custom_text_field/custom_text_field.dart';
//
// import '../../utils/app_images/app_images.dart';
// import '../../widget/custom_text/customtext.dart';
// import '../bottom_nav_bar/nav_bar.dart';
//
// class Login extends StatefulWidget {
//   Login({super.key});
//
//   @override
//   State<Login> createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController usernameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController cPasswordController = TextEditingController();
//   bool isChecked = false;
//   bool isChecked1 = false;
//
//   bool isLoginSelected = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding:  EdgeInsets.symmetric(horizontal: 20.w),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 70.h,
//                 ),
//                 Image.asset(
//                   AppImages.think,
//                   height: 24.h,
//                 ),
//                 SizedBox(
//                   height: 40.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: TextButton.icon(
//                         onPressed: () {
//                           setState(() {
//                             isLoginSelected = true;
//                           });
//                         },
//                         icon: Image.asset(
//                           "assets/images/png/login_profile.png",
//                           width: 16.w,
//                           height: 16.w,
//                           color: isLoginSelected == true
//                               ? Colors.white
//                               : AppColors.textColor2,
//                         ),
//                         label: CustomText(
//                             text: "Log In",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: isLoginSelected
//                                   ? Colors.white
//                                   : AppColors.textColor2,
//                             )),
//                         style: TextButton.styleFrom(
//                             backgroundColor: isLoginSelected
//                                 ? AppColors.textColor2
//                                 : Colors.white,
//                             padding: EdgeInsets.only(
//                                 left: 20.w, right: 35.w, top: 15.h, bottom: 15.h),
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 side: BorderSide(
//                                     color: AppColors.textColor2, width: 1))),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                       child: TextButton.icon(
//                         onPressed: () {
//                           setState(() {
//                             isLoginSelected = false;
//                           });
//                         },
//                         icon: Image.asset(
//                           "assets/images/png/login_profile.png",
//                           width: 16.w,
//                           height: 16.w,
//                           color: isLoginSelected == true
//                               ? AppColors.textColor2
//                               : AppColors.whiteColor,
//                         ),
//                         label: CustomText(
//                             text: "Sign Up",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: isLoginSelected
//                                   ? AppColors.textColor2
//                                   : Colors.white,
//                             )),
//                         style: TextButton.styleFrom(
//                             backgroundColor: isLoginSelected
//                                 ? Colors.white
//                                 : AppColors.textColor2,
//                             padding: EdgeInsets.only(
//                                 left: 20.w, right: 30.w, top: 15.h, bottom: 15.h),
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10.r),
//                                 side: BorderSide(
//                                     color: AppColors.textColor2, width: 1))),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Visibility(
//                   visible: isLoginSelected,
//                   child: Container(
//                     padding: EdgeInsets.zero,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CustomTextField(
//                           controller: emailController,
//                           hintText: "Email",
//
//                           pIcon: Image.asset(
//                             AppImages.sms,
//                             scale: 3.0,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         CustomTextField(
//                           obscureText: true,
//                           controller: usernameController,
//                           hintText: "Password",
//                           pIcon: Image.asset(
//                             AppImages.profileC,
//                             scale: 3,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 13,
//                         ),
//                         CustomText(
//                           text: "Forget Password",
//                           style: TextStyle(color: AppColors.textColor2),
//                         ),
//                         SizedBox(
//                           height: 60.h,
//                         ),
//                         Row(
//                           children: [
//                             Checkbox(
//                               value: isChecked,
//                               onChanged: (value) {
//                                 setState(() {
//                                   isChecked = value!;
//                                 });
//                               },
//                             ),
//                             CustomText(
//                               text: "Remember me",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w400,
//                                   color: AppColors.textColor3),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         ElevatedButton.icon(
//                           onPressed: () {
//                             Get.to(BottomNavBar());
//                           },
//                           icon: Image.asset(
//                             AppImages.login,
//                             scale: 3,
//                           ),
//                           label: CustomText(
//                             text: "Log In",
//                             style: TextStyle(fontWeight: FontWeight.w400),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                               fixedSize:
//                               Size(MediaQuery.of(context).size.width, 48.w)),
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         Row(
//                           children: [
//                             CustomText(
//                               text: "Don't have an account?",
//                               style: TextStyle(color: AppColors.textColor3),
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   isLoginSelected = !isLoginSelected;
//                                 });
//                               },
//                               child: CustomText(
//                                 text: " Sign Up",
//                                 style: TextStyle(color: AppColors.textColor2),
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 Visibility(
//                   visible: !isLoginSelected,
//                   child: Container(
//                     padding: EdgeInsets.zero,
//                     // color: Colors.grey,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CustomTextField(
//                           controller: emailController,
//                           hintText: "Email",
//                           pIcon: Image.asset(
//                             AppImages.sms,
//                             scale: 3.0,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         CustomTextField(
//                           controller: usernameController,
//                           hintText: "Username",
//                           pIcon: Image.asset(
//                             AppImages.profileC,
//                             scale: 3,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         CustomTextField(
//                           obscureText: true,
//                           controller: passwordController,
//                           hintText: "Password",
//                           pIcon: Image.asset(
//                             AppImages.password,
//                             scale: 3,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         CustomTextField(
//                           obscureText: true,
//                           controller: cPasswordController,
//                           hintText: "Confirm password",
//                           pIcon: Image.asset(
//                             AppImages.tick,
//                             scale: 3,
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Checkbox(
//                               // activeColor: Color(0xFFDEDCDC),
//                               value: isChecked1,
//                               onChanged: (value) {
//                                 setState(() {
//                                   isChecked1 = value!;
//                                 });
//                               },
//                             ),
//                             CustomText(
//                               text: "Accept ",
//                               style: TextStyle(fontWeight: FontWeight.w400),
//                             ),
//                             CustomText(
//                               text: "Terms ",
//                               style: TextStyle(fontWeight: FontWeight.w400),
//                             ),
//                             CustomText(
//                               text: "& ",
//                               style: TextStyle(fontWeight: FontWeight.w400),
//                             ),
//                             CustomText(
//                               text: "Condition",
//                               style: TextStyle(fontWeight: FontWeight.w400),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 30.h,
//                         ),
//                         ElevatedButton.icon(
//                           onPressed: () {},
//                           icon: Image.asset(
//                             AppImages.userAdd,
//                             scale: 3,
//                           ),
//                           label: CustomText(
//                             text: "Sign Up",
//                             style:,
//                           ),
//                           style: ElevatedButton.styleFrom(
//                               fixedSize:
//                               Size(MediaQuery.of(context).size.width, 48)),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }