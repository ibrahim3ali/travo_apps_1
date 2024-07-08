import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_colos.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/orders_validator.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/form/custom_text_form_field.dart';
import '../../dtomic/image_card/image_card_one.dart';
import '../../widget/sign_up_widget/form_dropdown_country_widget/form_dropdown_country_widget.dart';
import '../../widget/sign_up_widget/form_name_widget/form_name_widget.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final cardNumberController = TextEditingController();

  final cVVController = TextEditingController();
  final expDateController = TextEditingController();
  List<int> value = [1, 2];
  int c = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageCardOne(
            onTapIcon: () {
              context.pop();
            },
            fontSizeTitle: 30.sp,
            fontWeightTitle: FontWeight.w500,
            textLeft: 70.w,
            textBottom: 62.h,
            textTop: 58.h,
            textRight: 69.w,
            title: 'Add Card',
            distance: 0,
          ),
          Form(
            key: formfield,
            child: Padding(
              padding: REdgeInsets.only(top: 20, left: 25, right: 25),
              child: Column(
                children: [
                  FormNameWidget(nameController: nameController),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    labelText: 'Card Number',
                    borderRadius: 5,
                    keyboardType: TextInputType.emailAddress,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: cardNumberController,
                    validator: OrdersValidator.numberId,
                    borderColor: Colors.black12,
                    prefixIcon: Padding(
                      padding: REdgeInsets.all(14),
                      child: Image.asset(ImageAddCard.cardNumber),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          contentPadding: const EdgeInsets.all(15),
                          labelText: 'Exp. Date',
                          borderRadius: 5.r,
                          keyboardType: TextInputType.emailAddress,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: expDateController,
                          validator: OrdersValidator.numberId,
                          borderColor: Colors.black12,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          contentPadding: const EdgeInsets.all(15),
                          labelText: 'CVV',
                          borderRadius: 5.r,
                          keyboardType: TextInputType.emailAddress,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: cVVController,
                          validator: OrdersValidator.numberId,
                          borderColor: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  FormDropdownCountryWidget(value: value, c: c),
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
          fontSizeText: 16.sp,
          fontWeightText: FontWeight.w500,
          isText: true,
          text: 'Add Card',
          width: 411.w,
        ),
      ),
    );
  }
}
