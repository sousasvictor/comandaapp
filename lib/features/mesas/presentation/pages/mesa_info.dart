import 'package:comanda/shared/body_screem.dart';
import 'package:comanda/shared/constants.dart';
import 'package:comanda/shared/v_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../shared/app_bar_screen.dart';

class MesaInfo extends StatelessWidget {
  final int mesaIndex;
  const MesaInfo({Key? key, required this.mesaIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MesaInfoBody(
      mesaIndex: mesaIndex,
    );
  }
}

class MesaInfoBody extends StatefulWidget {
  final int mesaIndex;
  const MesaInfoBody({Key? key, required this.mesaIndex}) : super(key: key);

  @override
  State<MesaInfoBody> createState() => _MesaInfoBodyState();
}

class _MesaInfoBodyState extends State<MesaInfoBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarScreen(
        title: 'Mesa ${widget.mesaIndex}',
      ),
      body: BodyScreen(
        child: _body(context),
      ),
    );
  }

  _body(context) {
    return Column(
      children: [
        const VSpace(32),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [BoxShadows.defaulShadow],
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
        ),
        const VSpace(32),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width, 50),
            backgroundColor: Colors.red[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            "FECHAR COMANDA",
            style: TextStyles.whiteBolds14,
          ),
        ),
      ],
    );
  }
}
