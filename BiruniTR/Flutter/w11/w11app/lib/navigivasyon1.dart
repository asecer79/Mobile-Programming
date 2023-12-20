import 'package:flutter/material.dart';

//MaybePop
//CanPop

class Navigasyon1MainPage extends StatelessWidget {
  int userId = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              var responsedData =
                  await Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Navigasyon1Page1(userId);
                },
              ));

              print(Navigasyon1Page1.responsedData.toString() + ": Retrived");

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(Navigasyon1Page1.responsedData.toString())));
            },
            child: Text("Goto page 1")),
      ),
    );
  }
}

class Navigasyon1Page1 extends StatelessWidget {
  Navigasyon1Page1(this.userId);
  int userId;
  static String responsedData = "";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => checkStatus(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Page 1, userId = $userId"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                var isOk = await checkStatus(context);
                if (isOk) {
                  Navigator.pop(context, "Kullanıcı bilgileri güncellendi");
                }
              },
              child: Text("<<<Back")),
        ),
      ),
    );
  }

  Future<bool> checkStatus(BuildContext context) async {
    var shouldPop = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Bilgileri Eksiksiz girdiniz mi?"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                  responsedData = "Kullanıcı bilgileri güncellendi";
                },
                child: Text("Evet")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text("Hayır"))
          ],
        );
      },
    );

    return shouldPop;
  }
}
