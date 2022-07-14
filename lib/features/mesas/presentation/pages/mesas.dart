import 'package:comanda/features/mesas/presentation/pages/mesa_info.dart';
import 'package:comanda/shared/app_bar_screen.dart';
import 'package:comanda/shared/body_screem.dart';
import 'package:comanda/shared/constants.dart';
import 'package:comanda/shared/v_space.dart';
import 'package:flutter/material.dart';

class Mesas extends StatelessWidget {
  const Mesas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MesasBody();
  }
}

class MesasBody extends StatefulWidget {
  const MesasBody({Key? key}) : super(key: key);

  @override
  State<MesasBody> createState() => _MesasBodyState();
}

class _MesasBodyState extends State<MesasBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarScreen(
        title: 'Mesas',
      ),
      body: BodyScreen(
        child: _body(context),
      ),
    );
  }

  _body(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VSpace(32),
        const Text(
          'Mesas disponíveis',
          style: TextStyles.primaryBolds20,
        ),
        const VSpace(32),
        Center(
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (int index = 0; index < 21; index++)
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    height: 75,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadows.defaulShadow],
                      borderRadius: BorderRadius.circular(8),
                      color: CustomTheme.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        (index + 1).toString(),
                        style: TextStyles.whiteBolds20,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MesaInfo(mesaIndex: index + 1),
                      ),
                    );
                  },
                )
            ],
          ),
        )
      ],
    );
  }
}
