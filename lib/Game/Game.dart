import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    var result = ModalRoute.of(context)?.settings.arguments;

    print("Moeda " + result.toString());

    var caminhoImagem = "assets/moeda_cara.png";
    var nome = "cara";

    switch (result) {
      case "cara":
        setState(() {
          caminhoImagem = "assets/moeda_cara.png";
          nome = "Cara";
        });
      case "coroa":
        setState(() {
          caminhoImagem = "assets/moeda_coroa.png";
          nome = "Coroa";
        });
      default:
        setState(() {
          caminhoImagem = 'assets/moeda_cara.png';
        });
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(103, 186, 141, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 160),
              child: Text(
                nome,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Image.asset("assets/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
