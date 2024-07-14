import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../core/constants/app_colos.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_app_bar_one.dart';
import '../../widget/login_widget/form_email_widget/form_email_widget.dart';
import '../../widget/sign_up_widget/form_name_widget/form_name_widget.dart';
import '../../widget/sign_up_widget/form_phone_number_widget/form_phone_number_widget.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  final emailControler = TextEditingController();
  final formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageCardAppBarOne(
            onTapIcon: () {
              context.pop();
            },
            fontWeightTitle: FontWeight.bold,
            title: 'Contact  ',
            distance: 0,
            subTitle: 'Details',
            fontSizeSubTitle: 30.sp,
            fontWeightSubTitle: FontWeight.bold,
          ),
          Form(
            key: formfield,
            child: Padding(
              padding: REdgeInsets.symmetric(
                vertical: 20,
                horizontal: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormNameWidget(nameController: nameController),
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
                    height: 10,
                  ),
                  const TextWidget(
                    text: 'E-ticket will be sent to your E-mail',
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff636363),
                  ),
                  const SizedBox(
                    height: 56,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(
          bottom: 50,
          left: 25,
          right: 25,
        ),
        child: Buttons(
          onPressed: () {
            context.pop();
          },
          width: 411.w,
          borderColor: AppColos.linear,
          borderRadius: 30,
          isText: true,
          text: 'Done',
          fontSizeText: 20,
          fontWeightText: FontWeight.bold,
          colorText: AppColos.white,
        ),
      ),
    );
  }
}
