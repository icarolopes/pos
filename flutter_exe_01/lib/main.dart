import "package:flutter/material.dart";

void main () {
  runApp(MaterialApp (
      debugShowCheckedModeBanner: false,
      title: 'Calculadora Básica',
      home: CalculadoraBasica()
  ));
}

class CalculadoraBasica extends StatelessWidget {
  double number01 = 0.0;
  double number02 = 0.0;
  double number03 = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField tfNumber01 = TextField(
        decoration: InputDecoration(
            labelText: 'Primeiro número'
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          try {
            number01 = double.parse(value);
          } catch (ex) {
            number01 = 0.0;
          }
        }
    );

    TextField tfNumber02 = TextField(
        decoration: InputDecoration(
            labelText: 'Segundo Número'
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          try {
            number02 = double.parse(value);
          } catch (ex) {
            number02 = 0.0;
          }
        }
    );

    TextField tfNumber03 = TextField (
        decoration: InputDecoration (
            labelText: 'Terceiro Número'
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          try {
            number03 = double.parse(value);
          } catch (ex) {
            number03 = 0.0;
          }
        }
    );

    RaisedButton btnCalcular = RaisedButton(
        child: Text ('calcular'),
        onPressed: () {
          double add = number01 + number02 + number03;
          double sub = number01 - number02 - number03;

          AlertDialog resultDialog = AlertDialog (
              content: Text('Resultados: add = $add & sub = $sub')
          );
          showDialog(context: context, child: resultDialog);
        }
    );

    Container container = Container(
      padding: EdgeInsets.all(20.0),
      child: Column (
        children: <Widget> [
          tfNumber01, tfNumber02, tfNumber03, btnCalcular
        ],
      ),
    );

    AppBar appBar = AppBar(
        title: Text('Calculadora Básica')
    );

    Scaffold scaffold = Scaffold(
        appBar: appBar,
        body: container
    );

    return scaffold;
  }
}