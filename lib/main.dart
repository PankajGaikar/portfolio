import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/SocialButtonType.dart';
import 'package:portfolio/contants.dart' as Constants;
import 'package:portfolio/flutter_particle_bg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 135),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.white),
                  height: MediaQuery.of(context).size.height * .80,
                  width: MediaQuery.of(context).size.width * .4,
                  child: ListView(
                    children: [
                      Text(
                        Constants.TITLE,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 10,
                      ),
                      Text(
                        Constants.SUBTITLE,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        height: 5,
                      ),
                      Text(
                        Constants.SEMI_SUBTITLE,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                      Container(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Text(
                          Constants.INTRO_MESSAGE,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, height: 1.5),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      Text(
                        '#swift #Objective-C #C #C++ #Flutter #Dart',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Container(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        child: Center(
                          child: ListView(
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(5.0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              SocialConnectButton(
                                  button: SocialButtonType.mail),
                              SocialConnectButton(
                                  button: SocialButtonType.github),
                              SocialConnectButton(
                                  button: SocialButtonType.stackoverflow),
                              SocialConnectButton(
                                  button: SocialButtonType.linkedin),
                              SocialConnectButton(
                                  button: SocialButtonType.skype),
                              SocialConnectButton(
                                  button: SocialButtonType.twitter),
                              SocialConnectButton(
                                  button: SocialButtonType.instagram),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: ClipOval(
                  // radius: 100,
                  child: Image.asset(
                    'assets/Profile.png',
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

class SocialConnectButton extends StatelessWidget {
  const SocialConnectButton({
    Key key,
    @required this.button,
  }) : super(key: key);

  final SocialButtonType button;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          switch (button) {
            case SocialButtonType.mail:
              launch(button.webURI);
              break;
            default:
              js.context.callMethod('open', [button.webURI]);
          }
        },
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(button.asset, width: 50.0, height: 50.0),
          ),
        ),
      ),
    );
  }
}
