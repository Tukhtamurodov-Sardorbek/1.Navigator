import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceiveDataAndGoBack extends StatefulWidget {
  static const String id = 'receiver_data_and_go_back_page';
  final String message;
  const ReceiveDataAndGoBack({required this.message});

  @override
  _ReceiveDataAndGoBackState createState() => _ReceiveDataAndGoBackState();
}

class _ReceiveDataAndGoBackState extends State<ReceiveDataAndGoBack> {
  void _goBack() => Navigator.popUntil(context, (route) => route.isFirst);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1af803ff),
      appBar: AppBar(
        backgroundColor: const Color(0xffc8f3c0ff),
        title: const Text('MESSAGE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Container(
              color: CupertinoColors.white,
              child: ListTile(
                leading: const Icon(Icons.message),
                title: Text(widget.message),
              )
            ),
            SizedBox(height: 20),
            MaterialButton(
              child: const Text('GO BACK', style: TextStyle(color: CupertinoColors.white, fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
              onPressed: _goBack,
            )
          ],
        ),
      ),
    );
  }
}
