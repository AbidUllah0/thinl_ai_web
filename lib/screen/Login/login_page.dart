import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import '../../widget/custom_text_field/textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.34,
            vertical: 80,
          ),
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'THINK.',
                      style: TextStyle(
                        fontSize: 31,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'ai',
                      style: TextStyle(
                        fontSize: 31,
                        color: AppColors.secondary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        dividerColor: AppColors.secondary,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            right: BorderSide(color: AppColors.primary),
                            left: BorderSide(color: AppColors.primary),
                            top: BorderSide(color: AppColors.primary),
                            bottom: BorderSide(color: AppColors.primary)
                          ),
                          shape: BoxShape.rectangle
                        ),
                        labelColor: AppColors.primary,
                        unselectedLabelColor: AppColors.secondary,
                        indicatorColor: AppColors.primary,
                        indicatorSize: TabBarIndicatorSize.label,
                        splashBorderRadius: BorderRadius.circular(10),
                        labelStyle: const TextStyle(),
                        unselectedLabelStyle: TextStyle(color: AppColors.secondary, fontWeight: FontWeight.w700, fontSize: 30),
                        indicatorWeight: 5, // Increas10e the thickness of the tab indicator
                        tabs: [
                          Tab(
                            text: 'Log In',
                          ),
                          Tab(
                            text: 'Sign Up',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Center(
                              child: Card(
                                elevation: 2,
                                semanticContainer: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // Change the shape of the card
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                      child: CustomTextFormField(
                                        labelText: 'Email',
                                        onPressed: () {
                                          // TODO: Add your logic here
                                        },
                                        controller: emailController,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                      MediaQuery.of(context).size.width *
                                          0.01,
                                    ),
                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                      child: CustomTextFormField(
                                        labelText: 'Password',
                                        onPressed: () {
                                          // TODO: Add your logic here
                                        },
                                        controller: passwordController,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () {
                                          // TODO: Add Forgot Password functionality
                                        },
                                        child: const Text('Forgot Password'),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: CheckboxListTile(
                                        title: const Text('Remember Me'),
                                        value: true,
                                        onChanged: (value) {
                                          // TODO: Save checkbox value for remember me functionality
                                        },
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        // TODO: Add Log In functionality
                                      },
                                      child: const Text('Log In'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // TODO: Navigate to Sign Up page
                                      },
                                      child: const Text(
                                          "Don't have an account? Sign Up"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Center(
                              child: Text('Sign Up Page'),
                            ),
                          ],
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
