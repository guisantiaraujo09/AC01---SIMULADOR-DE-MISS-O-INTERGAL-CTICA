import 'package:flutter/material.dart';

class segundaTela extends StatelessWidget{
  final String nomeComandante;
  final int quantiTripulantes;
  final String destinoLuz;

  const segundaTela({
    super.key,
    required this.nomeComandante,
    required this.quantiTripulantes,
    required this.destinoLuz,
  });

  void voltarTela(BuildContext context){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SIMULADOR DE MISSÃO INTERGALÁCTICA",
        ),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Arial',
        ),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('jh')
        ],
      )
    );
  }
}