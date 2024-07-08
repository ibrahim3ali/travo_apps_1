import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../../core/constants/app_colos.dart';
import '../../dtomic/image_card/image_card_one.dart';
import '../../widget/login_widget/form_email_widget/form_email_widget.dart';
import '../../widget/login_widget/form_password_widget/form_password_widget.dart';
import '../../widget/login_widget/o_r_widget/o_r_widget.dart';
import '../../widget/login_widget/two_button_widget/two_button_widget.dart';
import '../../widget/sign_up_widget/form_dropdown_country_widget/form_dropdown_country_widget.dart';
import '../../widget/sign_up_widget/form_name_widget/form_name_widget.dart';
import '../../widget/sign_up_widget/form_phone_number_widget/form_phone_number_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formfield = GlobalKey<FormState>();
  bool passToggle = true;

  final emailControler = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  // final countryController = TextEditingController();
  final phoneNumberController = TextEditingController();
  List<int> value = [1, 2];
  int c = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCardOne(
              onTapIcon: () {
                context.pop();
              },
              fontSizeSubTitle: 14.sp,
              fontSizeTitle: 30.sp,
              distance: 15.h,
              title: 'Sign Up',
              subTitle: 'Let’s create your account!',
            ),
            Form(
              key: formfield,
              child: Padding(
                padding: REdgeInsets.all(25),
                child: Column(
                  children: [
                    FormNameWidget(nameController: nameController),
                    const SizedBox(
                      height: 20,
                    ),
                    FormDropdownCountryWidget(value: value, c: c),
                    const SizedBox(
                      height: 20,
                    ),
                    FormPhoneNumberWidget(
                        phoneNumberController: phoneNumberController),
                    const SizedBox(
                      height: 20,
                    ),
                    FormEmailWidget(emailControler: emailControler),
                    const SizedBox(
                      height: 20,
                    ),
                    FormPasswordWidget(
                      passwordController: passwordController,
                      passToggle: passToggle,
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'By tapping sign up agree to the ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                              ),
                              TextSpan(
                                text: 'Terms and Condition ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue.shade700,
                                    ),
                              ),
                              TextSpan(
                                text: 'and ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                              ),
                              TextSpan(
                                text: 'Privacy policy ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue.shade700,
                                    ),
                              ),
                              TextSpan(
                                text: 'of this app',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Buttons(
                      onPressed: () {
                        context.pushNamed(RoutesName.login);
                      },
                      width: 411,
                      borderColor: AppColos.linear,
                      borderRadius: 30,
                      isText: true,
                      text: 'Sign Up',
                      fontSizeText: 16,
                      fontWeightText: FontWeight.w500,
                      colorText: AppColos.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ORWidget(
                      text: 'or sign up with ',
                      right: 12,
                      left: 16,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TwoButtonWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
