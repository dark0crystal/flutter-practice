import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  String email='';
  String password='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Password',
                  ),
                )
              ],
            ),)
          ],
        ) 
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        showAlert(context, "Hi There !!");
      },
      
      ),
    );
  }
}


void showAlert(BuildContext context,String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog( title: Text('Alert'),
        content: Text(message),
        actions: [
          TextButton( onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}