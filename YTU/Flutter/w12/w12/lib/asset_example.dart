import 'package:flutter/material.dart';
//ASSET EXAMPLE

class PhotoGalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset example"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Image.asset("assets/images/image1.jpg")),
                  SizedBox(width: 5),
                  Expanded(child: Image.asset("assets/images/image2.jpg"))
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(child: Image.asset("assets/images/image3.jpg")),
                  SizedBox(width: 5),
                  Expanded(child: Image.asset("assets/images/image4.jpg"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
