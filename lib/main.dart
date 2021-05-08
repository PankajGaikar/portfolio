// import 'package:example/exp.dart';
// import './exp.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/flutter_particle_bg.dart';
// import 'exp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ParticleBackground(
          backgroundcolor: Colors.black,
          pointcolor: Colors.white.withOpacity(0.2),
          // bgimg: AssetImage('assets/bg.png'),
          child: ListView(
            children: [
              Text('列表元素'),
              ListTile(
                title: Text(
                  '第二个页面',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              )
            ],
          ),
        ));
  }
}
