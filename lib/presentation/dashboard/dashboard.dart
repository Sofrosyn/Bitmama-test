import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hollow/presentation/dashboard/cards/empty_card.dart';
import 'package:hollow/presentation/dashboard/cards/naira_card.dart';
import 'package:hollow/presentation/dashboard/cards/shadow_card.dart';
import 'package:hollow/presentation/dashboard/cards/usd_card.dart';
import 'package:hollow/presentation/dashboard/common/transaction_item.dart';
import 'package:hollow/resources/dimen.dart';
import 'package:hollow/resources/fonts.dart';
import 'package:hollow/resources/res_images.dart';
import 'package:hollow/resources/strings.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // _activeWallet("Raymond"),
              _firstTimeUser(),
        
              const SizedBox(
                height: 20,
              ),
        
              Stack(
                children: const [
                  ShadowCard(),
                 // UsdCard()
                 // NairaCard()
                 EmptyCard()
                  
                  
                  ],
        
              ),
        
              const SizedBox(
                height: 15,
              ),
        
              _servicesGrid(),
        
              const SizedBox(
                height: 15,
              ),
        
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Recent Transactions",
                  style: Fonts.FONT_H2,
                ),
                const Text(
                  "see all",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
        
              const SizedBox(
                height: 20,
              ),
        
        
              _emptyTransactionPlaceholder()
        
        
              // Expanded(
              //   child: ListView.builder(
              //       shrinkWrap: true,
              //       itemCount: 1,
              //       itemBuilder: ((context, index) => ListTile(
              //             leading: Image.asset(ResImages.airtime),
              //             title: const Text("Spotify"),
              //             subtitle: const Text("16:99 am"),
              //             trailing: Image.asset(ResImages.card),
              //           ))),
              // )
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: BottomNavigationBar(elevation: 2.0, items: [
          BottomNavigationBarItem(
              icon: Image.asset(ResImages.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset(ResImages.wallet), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Image.asset(ResImages.card), label: "Card"),
          BottomNavigationBarItem(
              icon: Image.asset(ResImages.user), label: "User"),
        ]),
      ),
    );
  }
}

Widget _activeWallet(String username) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, $username",
              style: Fonts.FONT_TEXT_USERNAME,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Welcome Back",
              style: Fonts.FONT_TEXT_WELCOME,
            )
          ],
        ),
        Image.asset(ResImages.notification)
      ],
    ),
  );
}

Widget _firstTimeUser() {
  return Container(
    margin: const EdgeInsets.all(Dimensions.DIALOG_MARGIN),
    height: Dimensions.DIALOG_HEIGHT,
    padding:
        const EdgeInsets.only(top: 16.0, bottom: 16, left: 12.0, right: 12.0),
    decoration: BoxDecoration(
        boxShadow: const [], // * add dropdown configuration
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        border: Border.all(width: 2)),
    child: FittedBox(
      fit: BoxFit.contain,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(width: 16.0, height: 16.0, ResImages.informationIcon),
          const SizedBox(width: 10),
          Text(
            StringValue.notificationMessage,
            style: Fonts.FONT_TEXT_WELCOME,
          )
        ],
      ),
    ),
  );
}

Widget _servicesGrid() {
  return Container(
    height: 244,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        color: Colors.white),
    child: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: [
        _serviceItems(ResImages.sendMoney, "Send Money"),
        _serviceItems(ResImages.convert, "Convert"),
        _serviceItems(ResImages.airtime, "Airtime & Data"),
        _serviceItems(ResImages.virtualCard, "Virtual Acc"),
        _serviceItems(ResImages.ticket, "Tickets & Events"),
        _serviceItems(ResImages.more, "More"),
      ],
    ),
  );
}

Widget _serviceItems(String image, String name) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(image),
      Text(
        name,
        style: Fonts.FONT_C2,
      )
    ],
  );
}

Widget _emptyTransactionPlaceholder() {
  return Wrap( 
    alignment: WrapAlignment.center,
    crossAxisAlignment: WrapCrossAlignment.center,
    direction: Axis.vertical,
      children: [
        Image.asset(ResImages.emptyDashboard),
        const SizedBox(height: 12,),
         Text("No transaction yet.", style: GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.w400,color: Colors.grey),)
      ],
    );
  
}
