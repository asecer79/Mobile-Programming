import 'package:flutter/material.dart';

class NonContainerWidgetsPage extends StatelessWidget {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NonContainerWidgets"),
      ),
      body: Column(
        children: [
          Text("Hello world"),
          Divider(thickness: 2, color: Colors.red),
          Image.network(
            "https://fastly.picsum.photos/id/912/200/300.jpg?hmac=wRzqCXn4iQFYYTjMpB_LljooIBYELbMYz8kUuWS-toc",
            width: 100,
          ),
          Divider(thickness: 2, color: Colors.red),
          Icon(Icons.access_alarm),
          Divider(thickness: 2, color: Colors.red),
          ElevatedButton(
              onPressed: () {
                print("Saved");
              },
              child: Text("Save")),
          Divider(thickness: 2, color: Colors.red),
          Switch(
              value: isChecked,
              onChanged: (value) {
                isChecked = value;
                print(isChecked);
              }),
          Divider(thickness: 2, color: Colors.red),
          Checkbox(value: true, onChanged: (value) {}),
          Divider(thickness: 2, color: Colors.red),
          Radio(value: true, groupValue: 1, onChanged: (value) {}),
          Divider(),
          Divider(thickness: 2, color: Colors.red),
          //RichText(text: InlineSpan("sfsdf")),
        ],
      ),
    );
  }
}

//01- Text
//02- Image
//03- Icon
//04- ElevatedButton
//05- Switch
//06- Checkbox
//07- Radio
//08- Slider
//09- TextField
//10- RichText
//11- Divider
