import 'package:flutter/material.dart';
import 'package:hollow/presentation/commonWidgets/custom_button.dart';
import 'package:hollow/resources/dimen.dart';
import 'package:hollow/resources/fonts.dart';
import 'package:hollow/resources/res_images.dart';
import 'package:hollow/resources/strings.dart';
import 'package:searchfield/searchfield.dart';

final scaffoldState = GlobalKey<ScaffoldState>();

class WalletCountry extends StatelessWidget {
  const WalletCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(height: Dimensions.MARGIN_LARGE),
                    Text(StringValue.createNewWallet, style: Fonts.FONT_H2),
                    const SizedBox(height: Dimensions.HEADER_SPACE),
                    Text(StringValue.pickCountrySubText, style: Fonts.FONT_C1),
                    const SizedBox(
                      height: Dimensions.MARGIN_MEDIUM,
                    ),
                    const Visibility(
                      visible: false,
                      child: Text("Choose a country"),
                    ),
                    _searchCountry(),
                    const SizedBox(
                      height: Dimensions.MARGIN_SMALL,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InkWell(
                      onTap: () => _showBottomSheet(context),
                      child: const PrimaryButton(text: "Proceed")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      context: context,
      builder: (context) => Wrap(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 24, bottom: 24, left: 30, right: 30),
                child: Column(
                  children: [
                    Image.asset(ResImages.bottomSheetOk),
                    const SizedBox(
                      height: Dimensions.MARGIN_MEDIUM,
                    ),
                    Text(
                      "Successful!",
                      style: Fonts.FONT_TEXT_H2,
                    ),
                    const SizedBox(
                      height: Dimensions.MARGIN_SMALL,
                    ),
                    Text(
                      "Your wallet has been created successfully.",
                      style: Fonts.FONT_TEXT,
                    ),
                    const SizedBox(
                      height: Dimensions.MARGIN_LARGE,
                    ),
                    const PrimaryButton(text: "Fund Wallet"),
                    const SizedBox(
                      height: Dimensions.MARGIN_MEDIUM,
                    ),
                    const SecondaryButton(text: "Back to Home")
                  ],
                ),
              )
            ],
          ));
}

Widget _searchCountry() => SearchField(
      suggestions:
          StringValue.country.map((e) => SearchFieldListItem(e)).toList(),
      suggestionState: Suggestion.expand,
      textInputAction: TextInputAction.next,
      hint: 'Choose Country',
      hasOverlay: false,
      searchInputDecoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 32, 30, 30)),
        ),
      ),
      itemHeight: 50,
      searchStyle: TextStyle(
        fontSize: 18,
        color: Colors.black.withOpacity(0.8),
      ),
    );
