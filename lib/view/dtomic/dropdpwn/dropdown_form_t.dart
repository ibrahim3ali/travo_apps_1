import 'package:flutter/material.dart';

class DropdownForm<T> extends StatelessWidget {
  const DropdownForm({
    super.key,
    this.items,
    this.onChanged,
    this.onTap,
    this.validator,
    this.isDense,
    this.hintText,
    this.colorBorder = Colors.black,
    this.radiusBorder = 6,
  });

  final List<DropdownMenuItem<T>>? items;
  final void Function(T?)? onChanged;
  final void Function()? onTap;
  final String? Function(T?)? validator;

  final bool? isDense;
  final String? hintText;
  final Color colorBorder;
  final double radiusBorder;
  @override
  Widget build(BuildContext context) {
    final borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(radiusBorder),
      borderSide: BorderSide(color: colorBorder),
    );

    final errorBorderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(radiusBorder),
      borderSide: const BorderSide(color: Colors.red),
    );
    return DropdownButtonFormField<T>(
      items: items,
      onChanged: onChanged,
      onTap: onTap,
      validator: validator,
      decoration: InputDecoration(
        isDense: isDense,
        disabledBorder: borderStyle,
        errorBorder: errorBorderStyle,
        border: borderStyle,
        focusedBorder: borderStyle,
        enabledBorder: borderStyle,
        focusedErrorBorder: errorBorderStyle,
        hintText: hintText,
      ),
    );
  }
}
