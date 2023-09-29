import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  final void Function() _quandoReiniciarQuestionario;

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns! ${pontuacao}';
    } else if (pontuacao < 12) {
      return 'Você é bom! ${pontuacao}';
    } else if (pontuacao < 16) {
      return 'Impressionante! ${pontuacao}';
    } else {
      return 'Nível Jedi ${pontuacao}';
    }
  }

  Resultado(this.pontuacao, this._quandoReiniciarQuestionario);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: _quandoReiniciarQuestionario,
            child: Text('Reiniciar ?'),
            style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 28)))
      ],
    );
  }
}
