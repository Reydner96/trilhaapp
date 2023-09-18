import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appBar
        title: Text(
          "Meu App",
          style: GoogleFonts.roboto(),
        ), //texto
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Text(
              "Foi clicado $quantidadeClicks vezes",
              style: GoogleFonts.roboto(),
            )),
            Center(
                child: Text(
              "O numero gerado foi: $numeroGerado",
              style: GoogleFonts.roboto(),
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_alert),
          onPressed: () {
            setState(() {
              quantidadeClicks = quantidadeClicks + 1;
              numeroGerado =
                  GeradorNumeroAleatorioService.gerarNumeroAleatorio(1000);
            });
          }),
    );
  }
}
