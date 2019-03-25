import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class resellerPage extends StatefulWidget {
  _resellerPageState createState() => _resellerPageState();
}

class _resellerPageState extends State<resellerPage> {

  Future<List> getData() async {
    final response = await http.get("http://api.shamyusof.com/getdata.php");
    return json.decode(response.body);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //child: child,
       //appBar: new AppBar(),
       body: new FutureBuilder<List>(
         future: getData(),
         builder: (context, snapshot){
           if(snapshot.hasError) print(snapshot.error);

           return snapshot.hasData
           ? new ItemList(list:  snapshot.data,)
           : new Center( child:  new CircularProgressIndicator(),);
         },
       ),
    );
  }
}


class ItemList extends StatelessWidget {

  List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list==null ? 0 : list.length,
      itemBuilder: (context, i){
        return new Container(
          
         padding: const EdgeInsets.all(5.0),
          child: new Card(
            child: Column(
              children: <Widget>[
                new Text(""),
                new ListTile(
                  title: new Text("${list[i]['nama']}",style: new TextStyle(fontWeight: FontWeight.bold),),
                  leading: new Icon(Icons.account_box, color: Colors.pink,size: 30.0,),
                  //subtitle: Text("No Tel : ${list[i]['notel']} \nKawasan : ${list[i]['kawasan']} \nStatus: ${list[i]['status']}"),
                  //subtitle: new Text("${list[i]['status']}"),
                  ),
                  //new Divider(color: Colors.amber,indent: 1.0,),
                  new ListTile(
                    leading: new Icon(Icons.phone, color: Colors.pink, size: 30.0,),
                    title: new Text("${list[i]['notel']}"
                      ,style: new TextStyle(fontWeight: FontWeight.w400),),
                    //subtitle: new Text("${list[i]['kawasan']}"),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.vpn_lock, color: Colors.pink, size: 30.0,),
                    title: new Text("${list[i]['kawasan']}"
                      ,style: new TextStyle(fontWeight: FontWeight.w400),),
                    //subtitle: new Text("${list[i]['kawasan']}"),
                  ),

                  new Text("\n"),


                  
              ],
            ),
          ),


        );
      },
    );
  }
}