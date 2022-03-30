import 'package:flutter/material.dart';
import '../components/items.dart';
import '../components/slides.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _pageViewController= PageController();
  double currentPage=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.transparent,
      extendBody: true,

      body: PageView.builder(
          controller: _pageViewController,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index){
            _pageViewController.addListener(() {
              setState(() {
                currentPage=_pageViewController.page!;
              });

            });
            return Slides(index);
          }
      ),
    );
  }
}
