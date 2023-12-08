import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _SimpleCalculator();
}

class _SimpleCalculator extends State<Calculator> {
  String _output = "0";
  String _tempOutput = "";
  String _operand = "";
  double _num1 = 0.0;
  double _num2 = 0.0;

  void buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _output = "0";
    }

    if (!(buttonText == "/" ||
        buttonText == "*" ||
        buttonText == "/" ||
        buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "00" ||
        buttonText == "=" ||
        buttonText == "C" ||
        buttonText == "." ||
        buttonText == "-")) {
      if (_output == "0") {
        _output = buttonText;
      } else {
        _output = _output + buttonText;
      }
    }

    setState(() {});
  }

  Widget buildButton(String buttonText) {
    return Expanded(
        child: OutlinedButton(
      onPressed: () {
        buttonPressed(buttonText);
      },
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Calculator")),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                child: Text(
                  _output,
                  style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.centerRight,
              ),
              Expanded(
                  child: Divider(
                height: 5,
                thickness: 1,
                color: Colors.red,
              )),
              Column(
                children: [
                  Row(
                    children: [
                      buildButton("1"),
                      SizedBox(width: 5),
                      buildButton("2"),
                      SizedBox(width: 5),
                      buildButton("3"),
                      SizedBox(width: 5),
                      buildButton("/"),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton("4"),
                      SizedBox(width: 5),
                      buildButton("5"),
                      SizedBox(width: 5),
                      buildButton("6"),
                      SizedBox(width: 5),
                      buildButton("*"),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton("7"),
                      SizedBox(width: 5),
                      buildButton("8"),
                      SizedBox(width: 5),
                      buildButton("9"),
                      SizedBox(width: 5),
                      buildButton("+"),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton("."),
                      SizedBox(width: 5),
                      buildButton("0"),
                      SizedBox(width: 5),
                      buildButton("00"),
                      SizedBox(width: 5),
                      buildButton("-"),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton("C"),
                      SizedBox(width: 5),
                      buildButton("="),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
