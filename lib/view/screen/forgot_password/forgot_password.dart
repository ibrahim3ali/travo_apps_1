import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../../core/constants/app_colos.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_one.dart';
import '../../widget/login_widget/form_email_widget/form_email_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailControler = TextEditingController();
  final formfield = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Form(
          key: formfield,
          child: Column(
            children: [
              ImageCardOne(
                onTapIcon: () {
                  context.pop();
                },
                textBottom: 10.h,
                distance: 15.h,
                textLeft: 40.w,
                textRight: 40.w,
                textTop: 105.h,
                title: 'Forgot Password',
                fontSizeTitle: 30,
                fontWeightTitle: FontWeight.w500,
                subTitle: 'You’ll get messages soon on your e-mail address',
                fontSizeSubTitle: 12,
                fontWeightSubTitle: FontWeight.w400,
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    FormEmailWidget(emailControler: emailControler),
                    const SizedBox(
                      height: 20,
                    ),
                    Buttons(
                      onPressed: () {
                        context.goNamed(RoutesName.login);
                      },
                      width: 411,
                      borderColor: AppColos.linear,
                      borderRadius: 30,
                      isText: true,
                      text: 'Send',
                      fontSizeText: 16,
                      fontWeightText: FontWeight.w500,
                      colorText: AppColos.white,
                    ),
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
