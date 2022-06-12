import 'package:flutter/material.dart';
import 'package:hollow/presentation/commonWidgets/custom_button.dart';
import 'package:hollow/presentation/createNewWalletCountry/wallet_country.dart';
import 'package:hollow/resources/dimen.dart';
import 'package:hollow/resources/fonts.dart';
import 'package:hollow/resources/strings.dart';
import 'package:searchfield/searchfield.dart';

class CreateNewWallet extends StatelessWidget {
  const CreateNewWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                  Text(StringValue.createNewWalletSubText,
                      style: Fonts.FONT_C1),
                  const SizedBox(
                    height: Dimensions.MARGIN_MEDIUM,
                  ),
                  _searchField(),
                  const SizedBox(
                    height: Dimensions.MARGIN_SMALL,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InkWell(
                      onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WalletCountry()))),
                      child: const PrimaryButton(text: "Proceed")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _searchField() => SearchField(
      suggestions:
          StringValue.walletType.map((e) => SearchFieldListItem(e)).toList(),
      suggestionState: Suggestion.expand,
      textInputAction: TextInputAction.next,
      hint: 'Choose Wallet',
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
