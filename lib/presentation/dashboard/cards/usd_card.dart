import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hollow/resources/colors.dart';
import 'package:hollow/resources/dimen.dart';
import 'package:hollow/resources/fonts.dart';
import 'package:hollow/resources/res_images.dart';

class UsdCard extends StatelessWidget {
  const UsdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      height: Dimensions.CARD_HEIGHT,
      decoration: const BoxDecoration(
          color: CustomColors.usdCardColor,
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("NGN Balance",
                  style: GoogleFonts.rubik(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey)),
              Image.asset(ResImages.addCard)
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "S40000",
            style: GoogleFonts.karla(
                fontSize: 40, fontWeight: FontWeight.w700, color: CustomColors.primaryColorButton),
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              MaterialButton(
                onPressed: null,
                height: 40,
                minWidth: 123,
                color: CustomColors.primaryColorButton,
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: CustomColors.primaryColorButton),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text("Withdraw", style: Fonts.FONT_TEXT_BUTTONS_BLUE),
              ),

              const SizedBox(width: 8),

              MaterialButton(
                onPressed: null,
                height: 40,
                minWidth: 123,
                color: Colors.white,
                disabledColor: CustomColors.primaryColorButton,
                elevation: 2,
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: CustomColors.primaryColorButton),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text("Fund", style: Fonts.FONT_TEXT_BUTTONS),
              ),
            ],
          )
        ],
      ),
    );
  }
}
