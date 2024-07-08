import 'package:flutter/material.dart';

class FormDropdownFormField extends StatelessWidget {
  const FormDropdownFormField({
    super.key,
    required this.dropdownColor,
    this.icon,
    this.text,
    required this.borderRadius,
    required this.contentPadding,
    this.items,
    this.onChanged,
    required this.value,
  });

  final Color dropdownColor;
  final Widget? icon;
  final String? text;
  final double borderRadius;
  final EdgeInsetsGeometry contentPadding;
  final List<DropdownMenuItem<int>>? items;
  final void Function(int?)? onChanged;
  final int value;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      // autofocus: true,
      value: value,
      

      dropdownColor: dropdownColor,
      icon: icon,
      
      borderRadius: BorderRadius.circular(borderRadius),
      decoration: InputDecoration(
        labelText: text,
        
        contentPadding: contentPadding,
        border: InputBorder.none, // (
        //   borderSide: BorderSide(color: dropdownColor),
        //   borderRadius: BorderRadius.circular(borderRadius),
        // ),
      ),
      items: items,
      onChanged: onChanged,
    );
  }
}
