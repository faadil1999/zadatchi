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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
   AnimationController ? anim_controller;
   Animation ? size_anim;

  @override
  void initState(){
    super.initState();
    anim_controller = AnimationController(vsync: this,duration: Duration(seconds: 3));
    size_anim = Tween<double>(begin: 150.0 , end: 300.0).animate(anim_controller!);

    anim_controller!.addListener(() {
      setState(() {});
    });

    // Repeat the animation after finish with reverse
    anim_controller!.repeat(reverse: true);
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: size_anim!.value,
          height: size_anim!.value,
          color: Colors.red,
        ),
      )

    );
  }
}
