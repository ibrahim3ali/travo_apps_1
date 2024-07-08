import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/dropdpwn/form_dropdown_form_field.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

class FormDropdownCountryWidget extends StatelessWidget {
  const FormDropdownCountryWidget({
    super.key,
    required this.value,
    required this.c,
  });

  final List<int> value;
  final int c;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColos.white, borderRadius: BorderRadius.circular(10)),
      child: FormDropdownFormField(
        icon: const Icon(Icons.keyboard_arrow_down_sharp),
        borderRadius: 5,
        contentPadding: REdgeInsets.all(15),
        dropdownColor: Colors.white,
        onChanged: (p0) {},
        value: value[c],
        items: const [
          DropdownMenuItem(
            value: 1,
            child: TextWidget(
              color: Colors.black,
              text: 'Indonesian1',
            ),
          ),
          DropdownMenuItem(
            value: 2,
            child: TextWidget(
              color: Colors.black,
              text: 'Indonesian2',
            ),
          ),
        ],
        text: 'Country',
      ),
    );
  }
}
