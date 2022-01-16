import 'package:flutter/material.dart';


class AfterSplashPage extends StatefulWidget {
  const AfterSplashPage({Key? key}) : super(key: key);
  static const String id = 'after_splash_page';

  @override
  _AfterSplashPageState createState() => _AfterSplashPageState();
}

class _AfterSplashPageState extends State<AfterSplashPage> {
  void _goBack(){
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('INSTAGRAM', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
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
    );
  }
}
