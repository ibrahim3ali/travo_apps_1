import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/core/constants/orders_validator.dart';
import 'package:travo_apps_1/view/dtomic/form/custom_text_form_field.dart';

class FormNameWidget extends StatelessWidget {
  const FormNameWidget({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      contentPadding: REdgeInsets.all(15),
      labelText: 'Name',
      borderRadius: 5,
      keyboardType: TextInputType.emailAddress,
      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      controller: nameController,
      validator: OrdersValidator.name,
      borderColor: Colors.black12,
    );
  }
}
