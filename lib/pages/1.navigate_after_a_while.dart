import 'dart:async';

import 'package:flutter/material.dart';

import '1.navigate_after_a_while_2.dart';


class NavigateAfterAWhile extends StatefulWidget {
  const NavigateAfterAWhile({Key? key}) : super(key: key);
  static const String id = 'navigate_after_a_while_page';

  @override
  _NavigateAfterAWhileState createState() => _NavigateAfterAWhileState();
}

class _NavigateAfterAWhileState extends State<NavigateAfterAWhile> {
  void _openNextPage(){
    Timer(const Duration(seconds: 3), (){Navigator.pushReplacementNamed(context, AfterSplashPage.id);});
  }

  @override
  void initState() {
    super.initState();
    _openNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Stack(
            children: const [
              Center(
                child: Image(
                  height: 80,
                  width: 80,
                  image: AssetImage('assets/instagramLogo.png'),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("From Facebook", style: TextStyle(fontSize: 20, color: Colors.black87),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
