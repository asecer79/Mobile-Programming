import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {  
  @override
  State<SimpleCalculator> createState() => _SimpleCalculator();
}

class _SimpleCalculator extends State<SimpleCalculator> {
  double n1 = 0;
  double n2 = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful ...")),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 50,
                child: TextField(
                  onChanged: (value) {
                    n1 = double.parse(value);
                  },
                )),
            SizedBox(width: 10),
            SizedBox(
                width: 50,
                child: TextField(
                  onChanged: (value) {
                    n2 = double.parse(value);
                  },
                )),
            SizedBox(width: 10),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = n1 + n2;
                    print(result);
                  });
                },
                child: Text("Sum")),
            SizedBox(width: 10),
            Text(result.toString())
          ],
        ),
      ),
    );
  }
}
