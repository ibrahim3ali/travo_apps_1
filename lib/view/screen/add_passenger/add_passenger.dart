import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../core/constants/app_colos.dart';
import '../../../core/constants/orders_validator.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/form/custom_text_form_field.dart';
import '../../dtomic/image_card/image_card_one.dart';
import '../../widget/login_widget/form_email_widget/form_email_widget.dart';
import '../../widget/sign_up_widget/form_name_widget/form_name_widget.dart';

class AddPassenger extends StatefulWidget {
  const AddPassenger({super.key});

  @override
  State<AddPassenger> createState() => _AddPassengerState();
}

class _AddPassengerState extends State<AddPassenger> {
  final formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  final identityNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageCardOne(
            onTapIcon: () {
              Navigator.pop(context);
            },
            fontSizeTitle: 30.sp,
            fontWeightTitle: FontWeight.w500,
            title: 'Add',
            distance: 0,
            subTitle: 'Passenger',
            fontSizeSubTitle: 30.sp,
            fontWeightSubTitle: FontWeight.w500,
          ),
          Form(
            key: formfield,
            child: Padding(
              padding: REdgeInsets.all(25),
              child: Column(
                children: [
                  FormNameWidget(nameController: nameController),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    contentPadding: REdgeInsets.all(15),
                    labelText: 'Identity Number',
                    borderRadius: 5,
                    keyboardType: TextInputType.emailAddress,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: identityNumberController,
                    validator: OrdersValidator.numberId,
                    borderColor: Colors.black12,
                    prefixIcon: SizedBox(
                      width: 65.w,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          TextWidget(
                            text: 'KTP',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 16.sp,
                          ),
                          SizedBox(height: 20.h, child: const VerticalDivider())
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  FormEmailWidget(emailControler: emailController),
                  SizedBox(
                    height: 20.h,
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
          borderColor: AppColos.linear,
          borderRadius: 50.r,
          colorText: AppColos.white,
          fontSizeText: 20.sp,
          fontWeightText: FontWeight.bold,
          isText: true,
          text: 'Done',
          width: 411.w,
        ),
      ),
    );
  }
}
