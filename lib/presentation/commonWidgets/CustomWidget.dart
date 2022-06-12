import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const VerticalSpace({required this.height});

  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
