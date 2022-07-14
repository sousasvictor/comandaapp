import 'package:flutter/material.dart';

class HSpace extends StatelessWidget {
  const HSpace(this.width, {Key? key}) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
