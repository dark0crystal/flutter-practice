import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text("kkasdf"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            Card( elevation: 8.0, color: Colors.white,
              margin: EdgeInsets.all(16.0),
              child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Text('Barista', textAlign: TextAlign.center, 
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48.0, 
                                                    color: Colors.orange,), ),
                Text('Travel Plans', textAlign: TextAlign.center,  
                          style: TextStyle(color: Colors.grey),
              ),  ],  ), ),

              Card(
                child: ListTile(),
              )

          ],
        ),
      ),
    );
  }
}