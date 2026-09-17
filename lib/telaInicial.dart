import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/meusTextFields.dart';
import 'tela2.dart';

class telaInicial extends StatelessWidget{
  telaInicial({super.key});

  final nomeComandante = TextEditingController();
  final quantiTripulantes = TextEditingController();
  final destinoLuz = TextEditingController();

  void abrirSegundaTela(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => segundaTela(
          nomeComandante: nomeComandante.text,
          quantiTripulantes:quantiTripulantes.hashCode,
          destinoLuz: destinoLuz.text,
        ),
      ),
    );
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
        backgroundColor: const Color.fromARGB(255, 190, 11, 11),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          meuTextField("Digite o nome do comandante",
          Icons.person, 
          nomeComandante
          ),
          meuTextField("Digite a quantidade de tripulantes",
          Icons.people, 
          quantiTripulantes
          ),
          meuTextField(
            "Digite a distancia em anos luz",
            Icons.timelapse,
            quantiTripulantes,
          )
        ],
      ),
    );  
  }
}