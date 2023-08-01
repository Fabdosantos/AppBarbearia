import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meu_app_barber/pages/home_page.dart';
import 'package:meu_app_barber/shared/config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _visible = false;
  String message = "";

  double maxWidthValue = 300;

  Widget _body() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: Image.asset('assets/images/logo_barbearia.png'),
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                constraints: BoxConstraints.tightFor(
                  width: MediaQuery.of(context).size.width >= maxWidthValue
                      ? maxWidthValue
                      : MediaQuery.of(context).size.width,
                ),
                fillColor: Colors.white,
                label: const Text(
                  'Email',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                floatingLabelStyle: const TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                ),
                border: const OutlineInputBorder(),
              ),
              controller: emailController,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: Colors.white,
                constraints: BoxConstraints.tightFor(
                  width: MediaQuery.of(context).size.width >= maxWidthValue
                      ? maxWidthValue
                      : MediaQuery.of(context).size.width,
                ),
                label: const Text(
                  'Senha',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                floatingLabelStyle: const TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                ),
                border: const OutlineInputBorder(),
              ),
              controller: passwordController,
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                if (emailController.text == Config.email &&
                    passwordController.text == Config.password) {
                  setState(() {
                    _visible = true;
                    message = "Login bem sucedido!";
                  });
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                } else {
                  setState(() {
                    _visible = true;
                    message = "Login mal sucedido!";
                  });
                }
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
              ),
              child: const Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: AlertDialog(
                content: Text(message),
                backgroundColor: message == "Login bem sucedido!"
                    ? Colors.green
                    : Colors.red,
              ),
              onEnd: () {
                Timer(const Duration(seconds: 3), () {
                  setState(() {
                    _visible = false;
                    message = "";
                  });
                });
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/image_barbearia_preto.jpg',
                fit: BoxFit.cover,
              ),
            ),
            _body(),
          ],
        ),
      ),
    );
  }
}
