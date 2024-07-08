import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/orders_validator.dart';
import '../../../dtomic/form/custom_text_form_field.dart';

class FormEmailWidget extends StatelessWidget {
  const FormEmailWidget({
    super.key,
    required this.emailControler,
  });

  final TextEditingController emailControler;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      contentPadding: REdgeInsets.all(15),
      borderRadius: 5,
      keyboardType: TextInputType.emailAddress,
      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      controller: emailControler,
      validator: OrdersValidator.email,
      labelText: 'Email',
      borderColor: Colors.black12,
    );
  }
}
