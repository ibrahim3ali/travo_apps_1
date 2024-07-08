import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/orders_validator.dart';
import '../../../dtomic/form/custom_text_form_field.dart';

class FormPasswordWidget extends StatelessWidget {
  const FormPasswordWidget({
    super.key,
    required this.passwordController,
    required this.passToggle,
    this.onTap,
  });

  final TextEditingController passwordController;
  final bool passToggle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      contentPadding: REdgeInsets.all(20),
      borderRadius: 5,
      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      controller: passwordController,
      keyboardType: TextInputType.visiblePassword,
      obscureText: passToggle,
      suffixIcon: InkWell(
        onTap: onTap,
        child: Icon(
          passToggle ? Icons.visibility_off : Icons.visibility,
          color: Colors.grey,
        ),
      ),
      validator: OrdersValidator.password,
      hintText: 'Password',
    );
  }
}
