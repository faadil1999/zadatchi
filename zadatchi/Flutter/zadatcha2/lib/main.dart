import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List element = ['Jhon','Valeria','Hector','Dima','Olegovitch','Kozlov','Vania','Kiril','Vitalic','Ekaterina'];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body:  ListView.builder(
         itemCount: element.length,
         itemBuilder:(context,index){
          return Column(

            children: [
              SizedBox(height: 10.0,),
              Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text('$index '), Text('${element[index]} ')],),
                ),
             const Divider(
                height: 20.0,
                thickness:5,
                indent: 1,
                endIndent: 1,
              )
            ],
          );
         },
      ),
    );
  }
}