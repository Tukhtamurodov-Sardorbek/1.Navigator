import 'package:flutter/material.dart';

import '3.Receive_Data_And_Go_Back_3.dart';

class ReceiveAndSendData extends StatefulWidget {
  static const String id = 'third_page';
  final String name;
  final int age;
  const ReceiveAndSendData({required this.name, required this.age});

  @override
  _ReceiveAndSendDataState createState() => _ReceiveAndSendDataState();
}

class _ReceiveAndSendDataState extends State<ReceiveAndSendData> {
  final message = TextEditingController();
  void _nextPage(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ReceiveDataAndGoBack(message: message.text,)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1af803ff),
      appBar: AppBar(
        backgroundColor: const Color(0xffc8f3c0ff),
        title: const Text('PERSONAL INFO', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 5),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Name: ${widget.name}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Text('Age: ${widget.age}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
            SizedBox(height: MediaQuery.of(context).size.height*0.07,),
            Container(
              color: Colors.white,
              height: 210,
              child: Stack(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.message),
                        title: TextField(
                          controller: message,
                          maxLines: 5,
                          style: const TextStyle(color: Colors.black, fontSize: 20),
                          keyboardType: TextInputType.text,
                          onSubmitted: (text) {print('Message: $text');},
                          // onChanged: (text) {print(text);},
                          decoration: const InputDecoration(
                            labelText: 'Message',
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.only(right: 7),
                        child: IconButton(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          icon: const Icon(Icons.send, color: Colors.red, size: 25,),
                          onPressed: (){
                            _nextPage(context);
                          },
                        ),
                      )
                    ],
                  ),
            ),
          ]
        ),
      ),
    );
  }
}
