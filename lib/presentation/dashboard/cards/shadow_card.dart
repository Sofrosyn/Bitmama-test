import 'package:flutter/material.dart';
import 'package:hollow/resources/dimen.dart';
import 'package:hollow/resources/res_images.dart';

class ShadowCard extends StatelessWidget {
  const ShadowCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.CARD_HEIGHT,
      margin: const EdgeInsets.only(
          left: Dimensions.CARD_MARGIN, right: Dimensions.CARD_MARGIN),
      padding: const EdgeInsets.all(Dimensions.CARD_PADDING),
      decoration:const BoxDecoration(
          image:  DecorationImage(image: AssetImage(ResImages.cardBackground)),
          borderRadius:  BorderRadius.all(Radius.circular(16.0))),
      transform: Matrix4.rotationZ(-0.124533),

    );
  }
}
