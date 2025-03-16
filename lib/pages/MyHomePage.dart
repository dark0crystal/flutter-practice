import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
   
    var padding16 = Padding(padding: EdgeInsets.all(16.0),);
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
             child: Column(
            children: [
              Row(children: <Widget>[
                 buildCont(Colors.amber, 60.0),
                padding16,
                 Expanded(child: 
                 buildCont(Colors.yellow, 60.0),), 
                padding16,

                 buildCont(Colors.brown, 60.0),
              ]
                
              ),
              _BuildRowAndStack(),
      
            ],
          ),),
         
        )
      )
    );
  }
}

Container buildCont(Color c, double size){
 return Container(
        color: c,
        width: size,
        height: size,
       
      );
}


Row _BuildRowAndStack() {
  return Row(
    children: <Widget>[
      CircleAvatar(
        backgroundColor: Colors.lightGreen,
        radius: 120.0,
        child: Stack(
          children: <Widget>[
            containerCW(Colors.yellow,100.0),
            containerCW(Colors.amber,60.0),
            containerCW(Colors.brown,40.0),
            containerCW(Colors.red,20.0)
          ],
        ),
      )
    ],
  );
}

 Container containerCW(Color myColor,double mySize) {
    return Container(
              color: myColor,
              height: mySize,
              width:mySize,
    );
  }


// Container smilingFace(){
//   return Container(
   
    
//     child: Stack(

//     ),
//   );
// }
