import 'package:comanda/shared/body_screem.dart';
import 'package:comanda/shared/constants.dart';
import 'package:comanda/shared/h_space.dart';
import 'package:comanda/shared/v_space.dart';
import 'package:flutter/material.dart';
import '../../../../shared/app_bar_screen.dart';
import '../../../mesas/presentation/pages/mesas.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarScreen(
        title: 'Home',
        leading: false,
      ),
      body: BodyScreen(
        child: _body(context),
      ),
    );
  }

  _body(context) {
    const Widget mesas = Mesas();

    return Column(
      children: [
        const VSpace(32),
        Row(
          children: [
            Expanded(
              flex: 1,
              child:
                  _homeButton(Icons.table_restaurant_rounded, 'Mesas', mesas),
            ),
            const HSpace(16),
            Expanded(
              flex: 1,
              child: _homeButton(Icons.menu_book_outlined, 'Cardápio', mesas),
            ),
          ],
        ),
        const VSpace(16),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: _homeButton(Icons.fastfood, 'Prato do dia', mesas),
            ),
            const HSpace(16),
            Expanded(
              flex: 1,
              child: _homeButton(Icons.person, 'Usuário', mesas),
            ),
          ],
        ),
        const VSpace(16),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: _homeButton(Icons.people_alt, 'Funcionários', mesas),
            ),
            const HSpace(16),
            Expanded(
              flex: 1,
              child:
                  _homeButton(Icons.analytics_outlined, 'Estatísticas', mesas),
            ),
          ],
        )
      ],
    );
  }

  _homeButton(IconData icon, String title, Widget route) {
    return InkWell(
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [BoxShadows.defaulShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: CustomTheme.primaryColor,
            ),
            Text(
              title,
              style: TextStyles.primaryBolds16,
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => route,
          ),
        );
      },
    );
  }
}
