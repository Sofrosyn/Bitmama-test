import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hollow/presentation/commonWidgets/custom_button.dart';
import 'package:hollow/presentation/createNewWallet/create_new_wallet.dart';
import 'package:hollow/presentation/dashboard/dashboard.dart';

import 'package:hollow/resources/dimen.dart';
import 'package:hollow/resources/fonts.dart';
import 'package:hollow/resources/strings.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),

                const SizedBox(height: Dimensions.MARGIN_LARGE),

                //First Name Field
                _formFields(StringValue.firstName),

                const SizedBox(height: Dimensions.SPACE_BTW_TEXTFIELD),

                //last Name Field
                _formFields(StringValue.lastName),

                const SizedBox(height: Dimensions.SPACE_BTW_TEXTFIELD),

                //Username
                _formFields(StringValue.userName),

                const SizedBox(height: Dimensions.SPACE_BTW_TEXTFIELD),

                //Phone Number
                _formFields(StringValue.phoneNumber,
                    inputType: TextInputType.none),

                const SizedBox(height: Dimensions.SPACE_BTW_TEXTFIELD),

                //Email Address
                _formFields(StringValue.email, inputType: TextInputType.number),

                const SizedBox(height: Dimensions.SPACE_BTW_TEXTFIELD),

                //Password
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: StringValue.password,
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: Dimensions.SPACE_BTW_TEXTFIELD),

                _checkTermsAndConditions(),

                const SizedBox(height: Dimensions.MARGIN_LARGE),

                InkWell(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()),
                        ),
                    child: const PrimaryButton(
                        text: StringValue.createAccountButton)),

                const SizedBox(height: Dimensions.MARGIN_MEDIUM),

                _signIn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _header() => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringValue.createAccount, style: Fonts.FONT_H1),
        const SizedBox(height: Dimensions.HEADER_SPACE),
        Text(StringValue.createAccountText, style: Fonts.FONT_C1),
      ],
    );

Widget _formFields(String hint,
        {TextInputType inputType = TextInputType.text}) =>
    TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: hint,
        border: const OutlineInputBorder(),
      ),
    );

Widget _checkTermsAndConditions() => FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Checkbox(value: false, onChanged: null),
          Container(
              padding: const EdgeInsets.only(left: 4),
              child: Html(data: StringValue.checkBox))
        ],
      ),
    );

Widget _signIn() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Got an account?", style: Fonts.FONT_TEXT),
        Text("Sign in", style: Fonts.FONT_TEXT2)
      ],
    );
