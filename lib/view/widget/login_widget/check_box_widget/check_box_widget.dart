import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_routers/routes_name.dart';
import '../../../../core/constants/app_colos.dart';
import '../../../dtomic/check_box/check_box_natural.dart';
import '../../../dtomic/text_widget/text_widget.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({
    super.key,
    required this.value,
    this.onChanged,
  });

  final bool value;
  final void Function(bool?)? onChanged;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CheckBoxNatural(
              isCheck: isCheck,
              onTap: () {
                setState(() {
                  isCheck = !isCheck;
                });
              },
              width: 30.w,
              color: AppColos.white,
              borderColor: Colors.grey.shade400,
              radius: 10.r,
            ),
            SizedBox(
              width: 10.w,
            ),
            TextWidget(
              text: 'Remember me',
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(RoutesName.forgotPassword);
          },
          child:  TextWidget(
            text: 'Forgot password?',
            color: Colors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
