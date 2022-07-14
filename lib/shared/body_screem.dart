import 'package:flutter/material.dart';

import 'constants.dart';

class BodyScreen extends StatefulWidget {
  final Widget child;
  final ScrollController? controller;

  const BodyScreen({
    Key? key,
    this.controller,
    required this.child,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BodyScreenState createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  final backgroudColor = Colors.purpleAccent;
  final bodyColor = Colors.white;

  ScrollController? get controller {
    return widget.controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomTheme.primaryColor,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
            controller: controller,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: widget.child,
            )),
      ),
    );
  }
}
