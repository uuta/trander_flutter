// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '/import.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'widgets/slides.dart';
import 'pages/signup.dart';

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
          disabledColor: const Color(0xff9b9b9b),
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
  Slides slides = Slides();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset("assets/images/icons/logo.png", width: 200),
          backgroundColor: Colors.white),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: slides.generateSlides(),
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
        onDone: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Signup()));
        },
      ),
    );
  }
}
