import 'package:flutter/material.dart';

class VSpace extends StatelessWidget {
  const VSpace(this.height, {Key? key}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
