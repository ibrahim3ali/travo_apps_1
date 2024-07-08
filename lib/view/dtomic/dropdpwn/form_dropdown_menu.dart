import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormDropdownMenu extends StatelessWidget {
  const FormDropdownMenu({
    super.key,
    this.inputFormatters,
    // required this.borderRadius,
    // required this.borderColor,
    this.controller,
    this.trailingIcon,
    this.selectedTrailingIcon,
    required this.enabled,
    this.hintText,
    this.width,
    required this.dropdownMenuEntries,
  });

  final List<TextInputFormatter>? inputFormatters;
  // final double borderRadius;
  // final Color borderColor;
  final TextEditingController? controller;
  final Widget? trailingIcon;
  final Widget? selectedTrailingIcon;
  final bool enabled;
  final String? hintText;
  final double? width;
  final List<DropdownMenuEntry<MaterialColor>> dropdownMenuEntries;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      inputDecorationTheme: const InputDecorationTheme(border: InputBorder.none
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(borderRadius),
          //   borderSide: BorderSide(color: borderColor),
          // ),
          ),
      inputFormatters: inputFormatters,
      controller: controller,
      trailingIcon: trailingIcon,
      selectedTrailingIcon: selectedTrailingIcon,
      enabled: enabled,
      hintText: hintText,
      
      width: width,
      dropdownMenuEntries: dropdownMenuEntries,
    );
  }
}
