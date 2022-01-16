import 'package:flutter/material.dart';
import 'package:navigator/pages/home_page.dart';

class AfterButton extends StatefulWidget {
  const AfterButton({Key? key}) : super(key: key);
  static const String id = 'after_button_page';

  @override
  _AfterButtonState createState() => _AfterButtonState();
}

class _AfterButtonState extends State<AfterButton> {
  void _goBack() => Navigator.popUntil(context, (route) => route.isFirst);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: MaterialButton(
            onPressed: _goBack,
            child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.elliptical(50, 50),
                    bottomRight: Radius.elliptical(50, 50),
                    topRight: Radius.circular(200.0),
                    bottomLeft: Radius.circular(200.0),
                  ),
                  border: Border.all(color: Colors.red, width: 10),


                ),
                child: const Center(child: Text('GO BACK', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),))),
          ),
        ),
      ),
    );
  }
}
