import 'package:flutter/material.dart';

import 'constants.dart';

class AppBarScreen extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool leading;

  const AppBarScreen({Key? key, required this.title, this.leading = true})
      : super(key: key);

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      automaticallyImplyLeading: widget.leading ? true : false,
      leading: widget.leading
          ? InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1.0,
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            )
          : null,
      centerTitle: true,
      elevation: 0,
      backgroundColor: CustomTheme.primaryColor,
    );
  }
}
