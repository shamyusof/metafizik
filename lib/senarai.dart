import 'package:flutter/material.dart';
import 'dart:convert';

class senaraiPage extends StatefulWidget {
  _senaraiPageState createState() => _senaraiPageState();
}

class _senaraiPageState extends State<senaraiPage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // appBar: new AppBar(
        //   title: new Text("Load local JSON file"),
        // ),
        body: new Container(
          child: new Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: new FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('assets/meta.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());

                  return new ListView.builder(
                    // Build the ListView
                    itemBuilder: (BuildContext context, int index) {
                      index = 3;
                      return new Card(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new Text("Nombor Asas Anda : " + new_data[index]['id']),
                            new Text("Penerangan : " + new_data[index]['umum']),
                            new Text("Warna Aura Anda : " + new_data[index]['color']),
                            new Text("No Kewangan : " + new_data[index]['nokew']),
                            new Text("Elemen Anda : " + new_data[index]['elemen']),
                         
                          ],
                        ),
                      );
                    },
                    itemCount: new_data == null ? 0 : 1,
                  );
                }),
          ),
        ));
  }
  
}
