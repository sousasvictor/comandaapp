import 'package:comanda/shared/constants.dart';
import 'package:comanda/shared/v_space.dart';
import 'package:flutter/material.dart';
import '../../../home/presentation/pages/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginBody();
  }
}

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> _buttonEnabled = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: const AppBarScreen(title: 'Login'),
        body: _body()

        //  BodyScreen(
        //   child: _body(),
        // ),
        );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const VSpace(120),
          const Icon(
            Icons.restaurant,
            size: 80,
            color: CustomTheme.primaryColor,
          ),
          // const Text(
          //   'Comanda',
          //   style: TextStyles.primaryBolds32,
          // ),
          const VSpace(32),
          _textFieldLogin(),
          const VSpace(8),
          _textFieldPassword(),
          const VSpace(40),
          _buttonLogin(),
          const VSpace(32),
          _version(),
          const Spacer(),
          _developed(),
          const VSpace(32),
        ],
      ),
    );
  }

  _textFieldLogin() {
    return TextFormField(
      controller: loginController,
      onChanged: (value) {
        _isEmpty();
      },
      decoration: InputDecoration(
        hintText: "Digite seu CPF",
        hintStyle: TextStyles.hintTextStyle,
        focusedBorder: BorderStyles.focusedBorder,
        enabledBorder: BorderStyles.disabledBorder,
      ),
      textInputAction: TextInputAction.done,
    );
  }

  _textFieldPassword() {
    return TextFormField(
      controller: passwordController,
      onChanged: (value) {
        _isEmpty();
      },
      decoration: InputDecoration(
        hintText: "Digite sua senha",
        hintStyle: TextStyles.hintTextStyle,
        focusedBorder: BorderStyles.focusedBorder,
        enabledBorder: BorderStyles.disabledBorder,
      ),
      textInputAction: TextInputAction.done,
    );
  }

  _isEmpty() {
    if (loginController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      _buttonEnabled.value = true;
    } else {
      _buttonEnabled.value = false;
    }
  }

  _buttonLogin() {
    return ValueListenableBuilder<bool>(
      valueListenable: _buttonEnabled,
      builder: (context, value, child) {
        return TextButton(
          onPressed: _buttonEnabled.value
              ? () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                  // context.read<LoginBloc>().login(
                  //       loginController.text,
                  //       senhaController.text,
                  //     );
                }
              : null,
          style: TextButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width, 50),
            backgroundColor: _buttonEnabled.value
                ? CustomTheme.primaryColor
                : CustomTheme.disableFontColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            "ENTRAR",
            style: TextStyles.whiteBolds14,
          ),
        );
      },
    );
  }

  _version() {
    return const Text(
      '1.0.0+1',
      style: TextStyles.fontColorNormals12,
    );
  }

  _developed() {
    return Column(
      children: const [
        Text(
          'Developed by',
          style: TextStyles.fontColorNormals12,
        ),
        Text(
          'Group 9',
          style: TextStyles.primaryBolds14,
        ),
      ],
    );
  }
}
