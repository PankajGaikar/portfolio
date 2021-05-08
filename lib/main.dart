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
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 135),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.white),
                  height: MediaQuery.of(context).size.height * .75,
                  width: MediaQuery.of(context).size.width * .6,
                  child: ListView(
                    children: [
                      Text(
                        'PANKAJ GAIKAR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'iOS Developer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer iOS Developer',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                      Text(
                        '#swift #Objective-C #C #C++ #Flutter #Dart',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ClipOval(
                  // radius: 100,
                  child: Image.asset(
                    'assets/Sherlock.jpg',
                    height: 200,
                    width: 200,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
