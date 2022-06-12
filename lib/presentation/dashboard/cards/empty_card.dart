import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hollow/presentation/createNewWallet/create_new_wallet.dart';
import 'package:hollow/resources/colors.dart';
import 'package:hollow/resources/fonts.dart';
import 'package:hollow/resources/res_images.dart';

import '../../../resources/dimen.dart';

class EmptyCard extends StatelessWidget {
  const EmptyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions.CARD_HEIGHT,
        decoration: const BoxDecoration(
            color: CustomColors.primaryColorButton,
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const CreateNewWallet())),
          child: Center(
            child: Container(
              height: 100,
              width: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: DottedBorder(
                strokeWidth: 2,
                color: Colors.grey,
                borderType: BorderType.RRect,
                dashPattern: const [3, 8],
                radius: const Radius.circular(16.0),
                child: Center(
                  child: Wrap(
                    spacing: 18,
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Create Wallet",
                        style: Fonts.FONT_H3_WHITE,
                      ),
                      Image.asset(ResImages.addCard)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
