import 'package:flutter/material.dart';
import 'package:hollow/presentation/createAccount/create_account_screen.dart';
import 'package:hollow/presentation/createNewWallet/create_new_wallet.dart';
import 'package:hollow/presentation/createNewWalletCountry/wallet_country.dart';
import 'package:hollow/presentation/dashboard/dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CreateAccount(),
    );
  }
}
