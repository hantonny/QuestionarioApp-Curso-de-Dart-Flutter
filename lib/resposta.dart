import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  Resposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: onSelecao,
        child: Text(texto),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
