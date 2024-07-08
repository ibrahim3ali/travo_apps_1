import 'package:flutter/material.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';

class ListTileCardWidget extends StatelessWidget {
  const ListTileCardWidget({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.height = 70,
    this.padding = const EdgeInsets.only(left: 10),
    this.color = AppColos.white,
    this.radius = 12,
    this.isSubTitle = false,
  });
  final Widget? leading, title, subtitle, trailing;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double radius;
  final bool isSubTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: isSubTitle ? subtitle : null,
        trailing: trailing,
      ),
    );
  }
}
