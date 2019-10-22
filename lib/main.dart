import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SybillesKleineSeite(),
    );
  }
}

class SybillesKleineSeite extends StatefulWidget {
  @override
  _SybillesKleineSeiteState createState() => _SybillesKleineSeiteState();
}

class _SybillesKleineSeiteState extends State<SybillesKleineSeite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sybilles super Seite"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network("https://bilder.t-online.de/b/84/93/82/46/id_84938246/920/tid_da/eichhoernchen-geert-weggen-zeigt-die-welt-der-kleinen-nager-.jpg"),
            machMirNeReihe("Name", "Sybille"),
            machMirNeReihe("Alter", "21"),
            machMirNeReihe("Hobby", "Fußball"),
          ],
        ),
      ),
    );
  }

  Widget machMirNeReihe(attribut, wert) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            attribut,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            wert,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
