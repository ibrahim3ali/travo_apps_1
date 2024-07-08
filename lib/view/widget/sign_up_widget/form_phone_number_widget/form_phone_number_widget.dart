import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/core/constants/orders_validator.dart';
import 'package:travo_apps_1/view/dtomic/form/custom_text_form_field.dart';

class FormPhoneNumberWidget extends StatelessWidget {
  const FormPhoneNumberWidget({
    super.key,
    required this.phoneNumberController,
  });

  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      contentPadding: REdgeInsets.all(15),
      labelText: 'Phone Number',
      borderRadius: 5,
      keyboardType: TextInputType.emailAddress,
      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      controller: phoneNumberController,
      validator: OrdersValidator.phone,
      borderColor: Colors.black12,
    );
  }
}
