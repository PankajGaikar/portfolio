import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/SocialButtonType.dart';
import 'package:portfolio/contants.dart' as Constants;
import 'package:portfolio/flutter_particle_bg.dart';
import 'package:responsive/flex_widget.dart';
import 'package:responsive/responsive_row.dart';
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
                child: ResponsiveRow(
                  columnsCount: 12,
                  children: <Widget>[
                    FlexWidget(
                      child: Container(
                        padding: EdgeInsets.only(top: 120),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: [
                            Center(
                              child: Text(
                                Constants.TITLE,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                Constants.SUBTITLE,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                            Center(
                              child: Text(
                                Constants.SEMI_SUBTITLE,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w100),
                              ),
                            ),
                            Container(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 40),
                              child: Text(
                                Constants.INTRO_MESSAGE,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, height: 1.5),
                              ),
                            ),
                            Container(
                              height: 15,
                            ),
                            Center(
                              child: Text(
                                '#swift #Objective-C #C #C++ #Flutter #Dart',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              height: 10,
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
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      xs: 11,
                      sm: 10,
                      md: 10,
                      lg: 10,
                      xl: 10,
                      xxl: 10,
                      xxxl: 10,
                    )
                  ],
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
