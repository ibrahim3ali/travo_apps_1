import 'package:flutter/material.dart';

import '../../../core/constants/app_colos.dart';
import '../../../core/constants/assets.dart';
import '../../dtomic/text_widget/text_widget.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColos.linear,
        image: DecorationImage(
          image: AssetImage(ImageSplash.splash1),
        ),
      ),
      child: const Center(
        child: TextWidget(
          text: 'Travo',
          fontSize: 64,
          fontWeight: FontWeight.w700,
          color: AppColos.white,
        ),
      ),
    );
  }
}
