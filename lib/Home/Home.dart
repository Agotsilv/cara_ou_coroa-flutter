import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  resultado() {
    var itens = ["cara", "coroa"];
    var number = Random().nextInt(itens.length);
    var result = itens[number];
    Navigator.pushNamed(context, "/game", arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(103, 186, 141, 1),
      appBar: null,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Image.asset("assets/logo.png"),
                GestureDetector(
                  onTap: () {
                    resultado();
                  },
                  child: Image.asset("assets/botao_jogar.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
