import 'package:flutter/material.dart';

import '2.Navigate_by_button_2.dart';

class NavigateByButton extends StatefulWidget {
  const NavigateByButton({Key? key}) : super(key: key);
  static const String id = 'navigate_by_button_page';

  @override
  _NavigateByButtonState createState() => _NavigateByButtonState();
}

class _NavigateByButtonState extends State<NavigateByButton> {
  void _nextPage() => Navigator.of(context).pushNamed(AfterButton.id);
  bool isEntered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: MaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            height: 200,
            minWidth: 250,
            child: Container(
              height: 200,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 10),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.elliptical(100, 100),
                  bottomLeft: Radius.elliptical(100, 100),
                  topRight: Radius.elliptical(100, 100),
                  bottomRight: Radius.elliptical(100, 100),
                )
              ),
              child: const Text('Next', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 3.5)),
            ),
            onPressed: _nextPage,
          ),
        ),
      ),
    );
  }
}
