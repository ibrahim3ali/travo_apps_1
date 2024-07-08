import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../../core/constants/app_colos.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_one.dart';
import '../../dtomic/text_widget/text_widget.dart';
import '../../widget/login_widget/check_box_widget/check_box_widget.dart';
import '../../widget/login_widget/form_email_widget/form_email_widget.dart';
import '../../widget/login_widget/form_password_widget/form_password_widget.dart';
import '../../widget/login_widget/o_r_widget/o_r_widget.dart';
import '../../widget/login_widget/two_button_widget/two_button_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;
  final formfield = GlobalKey<FormState>();
  bool passToggle = true;

  final emailControler = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 411.w,
        child: SingleChildScrollView(
          child: Form(
            key: formfield,
            child: Column(
              children: [
                ImageCardOne(
                  onTapIcon: () {
                    context.goNamed(RoutesName.login);
                  },
                  fontSizeSubTitle: 14.sp,
                  fontSizeTitle: 30.sp,
                  distance: 15.h,
                  title: 'Login',
                  subTitle: 'Hi, Welcome back!',
                ),
                Padding(
                  padding: REdgeInsets.only(top: 25.h, left: 22.w, right: 22.w),
                  child: Column(
                    children: [
                      FormEmailWidget(emailControler: emailControler),
                      SizedBox(
                        height: 30.h,
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
                      SizedBox(
                        height: 30.h,
                      ),
                      CheckBoxWidget(
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = !this.value;
                          });
                        },
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Buttons(
                        width: 411.w,
                        height: 50.h,
                        borderColor: AppColos.linear,
                        text: 'Log In',
                        isText: true,
                        onPressed: () {
                          context.goNamed(RoutesName.home);
                        },
                        fontSizeText: 16,
                        fontWeightText: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const ORWidget(
                        text: ' or log in with ',
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const TwoButtonWidget(),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextWidget(
                            text: 'Don’t have an account? ',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          InkWell(
                            onTap: () {
                              context.pushNamed(RoutesName.signUp);
                            },
                            child: const TextWidget(
                              text: 'Sign Up',
                              color: Color.fromARGB(255, 33, 89, 243),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
