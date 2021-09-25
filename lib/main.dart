// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Trander',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color(0xff3316F2),
          primaryColorLight: const Color(0xff1CACBF),
          primaryTextTheme:
              const TextTheme(bodyText2: TextStyle(color: Color(0xff5c6360))),
          fontFamily: 'Arial',
        ),
        home: const MainPage());
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("images/onBoarding/slides/select.png"),
          title: "Select",
          body: "Choose the city or keyword mode",
          footer: InkWell(
            child: const Text(
              "Web illustrations by Storyset",
              style: TextStyle(color: Colors.blueAccent),
            ),
            onTap: () async {
              if (await canLaunch("https://storyset.com/web")) {
                await launch("https://storyset.com/web");
              }
            },
          ),
          decoration: PageDecoration(
              titleTextStyle:
                  const TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
              bodyTextStyle:
                  TextStyle(fontSize: 22.0, color: Colors.grey[700]))),
      PageViewModel(
          image: Image.asset("images/onBoarding/slides/detect.png"),
          title: "Detect",
          body: "Find a new location for you",
          footer: InkWell(
            child: const Text(
              "Money illustrations by Storyset",
              style: TextStyle(color: Colors.blueAccent),
            ),
            onTap: () async {
              if (await canLaunch("https://storyset.com/money")) {
                await launch("https://storyset.com/money");
              }
            },
          ),
          decoration: PageDecoration(
              titleTextStyle:
                  const TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
              bodyTextStyle:
                  TextStyle(fontSize: 22.0, color: Colors.grey[700]))),
      PageViewModel(
          image: Image.asset("images/onBoarding/slides/explore.png"),
          title: "Explore",
          body: "See more and go there",
          footer: InkWell(
            child: const Text(
              "City illustrations by Storyset",
              style: TextStyle(color: Colors.blueAccent),
            ),
            onTap: () async {
              if (await canLaunch("https://storyset.com/city")) {
                await launch("https://storyset.com/city");
              }
            },
          ),
          decoration: PageDecoration(
              titleTextStyle:
                  const TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
              bodyTextStyle:
                  TextStyle(fontSize: 22.0, color: Colors.grey[700]))),
      PageViewModel(
          image: Image.asset("images/onBoarding/slides/play.png"),
          title: "Let's play!",
          body: "Enjoy! Start the journey below",
          footer: InkWell(
            child: const Text(
              "People illustrations by Storyset",
              style: TextStyle(color: Colors.blueAccent),
            ),
            onTap: () async {
              if (await canLaunch("https://storyset.com/people")) {
                await launch("https://storyset.com/people");
              }
            },
          ),
          decoration: PageDecoration(
              titleTextStyle:
                  const TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
              bodyTextStyle:
                  TextStyle(fontSize: 22.0, color: Colors.grey[700]))),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset("images/icons/logo.png", width: 200),
          backgroundColor: Colors.white),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showNextButton: true,
        showSkipButton: false,
        doneColor: Theme.of(context).primaryColorLight,
        nextColor: Theme.of(context).primaryColorLight,
        dotsDecorator:
            DotsDecorator(activeColor: Theme.of(context).primaryColorLight),
        skip: const Text("Skip"),
        next: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                  color: Theme.of(context).primaryColorLight, width: 2)),
          child: Center(
            child: Icon(
              Icons.navigate_next,
              size: 30,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
        ),
        done: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 40,
                    offset: const Offset(4, 4))
              ]),
          child: const Center(
            child: Icon(
              Icons.done,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        onDone: () {},
      ),
    );
  }
}
