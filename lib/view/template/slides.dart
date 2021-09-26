import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Slides {
  List<PageViewModel> generateSlides() {
    return [
      _generateSlide(
          imgPath: "images/onBoarding/slides/select.png",
          title: "Select",
          body: "Choose the city or keyword mode",
          linkText: "Web illustrations by Storyset",
          link: "https://storyset.com/web"),
      _generateSlide(
          imgPath: "images/onBoarding/slides/detect.png",
          title: "Detect",
          body: "Find a new location for you",
          linkText: "Money illustrations by Storyset",
          link: "https://storyset.com/money"),
      _generateSlide(
          imgPath: "images/onBoarding/slides/explore.png",
          title: "Explore",
          body: "See more and go there",
          linkText: "City illustrations by Storyset",
          link: "https://storyset.com/city"),
      _generateSlide(
          imgPath: "images/onBoarding/slides/play.png",
          title: "Let's play!",
          body: "Enjoy! Start the journey below",
          linkText: "People illustrations by Storyset",
          link: "https://storyset.com/people"),
    ];
  }

  PageViewModel _generateSlide(
      {required String imgPath,
      required String title,
      required String body,
      required String linkText,
      required String link}) {
    return PageViewModel(
        image: Image.asset(imgPath),
        title: title,
        body: body,
        footer: InkWell(
          child: Text(
            linkText,
            style: const TextStyle(color: Colors.blueAccent),
          ),
          onTap: () async {
            if (await canLaunch(link)) {
              await launch(link);
            }
          },
        ),
        decoration: PageDecoration(
            titleTextStyle:
                const TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 22.0, color: Colors.grey[700])));
  }
}
