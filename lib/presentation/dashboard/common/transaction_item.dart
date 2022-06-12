import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String transactionName;
  final String transactionTime;
  final String transactionImage;
  final String transactionAmount;

  const TransactionItem(
      {Key? key,
      required this.transactionName,
      required this.transactionTime,
      required this.transactionImage,
      required this.transactionAmount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(transactionImage),
        Column(
          children: [
            Text(transactionName),
            Text(transactionTime),
          ],
        ),
        Text(transactionAmount),
      ],
    );
  }
}
