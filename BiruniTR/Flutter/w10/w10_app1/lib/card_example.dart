//Card Example

import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text("Card")),
      body: Card(
        elevation: 8.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/image1.jpg')),
            title: Text("Evcil hayvan, labrador"),
            subtitle: Text("Doslarımızı sahiplenelim"),
            trailing: Icon(Icons.summarize),
          ),
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            child: Text("asdlsakdjlsakdjlsad sadlhaskd sad sad"),
          ),
          ButtonBar(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Detay Gör")),
              ElevatedButton(onPressed: () {}, child: Text("İletişim Kur"))
            ],
          )
        ]),
      ),
    );
  }
}
