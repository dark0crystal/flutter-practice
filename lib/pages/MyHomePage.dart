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
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second page
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Go to Second Page'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Set background color (previously 'primary')
            foregroundColor: Colors.white, // Set text color (previously 'onPrimary')
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
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