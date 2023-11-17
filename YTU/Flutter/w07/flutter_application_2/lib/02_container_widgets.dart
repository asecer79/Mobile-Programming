import 'package:flutter/material.dart';

class ContainerWidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        //heightFactor: 1,
        //widthFactor:  2,
        child: Container(
            padding: EdgeInsets.all(50),
            child: Container(
              width: 250,
              height: 300,
              //padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
              // margin: EdgeInsets.fromLTRB(10, 50, 10, 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("IPhone 15 Pro Max.",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Divider(color: Colors.amber),
                    Image.network(
                        "https://cdn.dxomark.com/wp-content/uploads/medias/post-155689/Apple-iPhone-15-Pro-Max_-blue-titanium_featured-image-packshot-review.jpg"),
                    Container(
                      child: ElevatedButton(
                          onPressed: () {}, child: Icon(Icons.add)),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(25)),
            )),
      ),
    );
  }
}






//01-Container
//02-Padding
//03-Align
//04-Column
//05-Row
//06-Expanded
//07-Scaffold
//08-ListView
//09-GridView
//10-Stack
//11-FLEXIBLE
//12-AspectRatio
//13-ConstrainedBox
//14-Wrap
//15-Card
//12-InkWell
//MaterialApp
//14-Center




