import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:zadatch1/main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color:Colors.green ,
        child:Center(
          child: FlatButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FirstScreen()));
            },
            child:Text("На Экран 1" ,style: TextStyle(color: Colors.white),) ,)
        ),
        ),

    );
  }
}
