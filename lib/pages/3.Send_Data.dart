import 'package:flutter/material.dart';

import '3.Receive_And_Send_Data_2.dart';

class SendData extends StatefulWidget {
  const SendData({Key? key}) : super(key: key);
  static const String id = 'send_data';

  @override
  _SendDataState createState() => _SendDataState();
}

class _SendDataState extends State<SendData> {
  final userName = TextEditingController();
  final userAge = TextEditingController();
  String? _name;
  int? _age;
  @override
  Widget build(BuildContext context) {
    void _nextPage(BuildContext context) async{
      var data = await Navigator.push(context,
          MaterialPageRoute(builder: (context) => ReceiveAndSendData(name: userName.text, age: int.parse(userAge.text))));
      if(data!=null && data.containsKey('name') && data.containsKey('age')){
        setState(() {
          _name = data['name'];
          _age = int.parse(data['age']);
        });
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME PAGE', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _name != null ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Column(
                  children: [
                    Text('Name: $_name', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    Text('Age: $_age', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                  ],
                )
            ) : const SizedBox(),
            /// NAME
            ListTile(
              leading: const Icon(Icons.person),
              title: TextField(
                controller: userName,
                style: const TextStyle(color: Colors.black, fontSize: 20),
                keyboardType: TextInputType.name,
                onSubmitted: (text) {print('NAME: $text');},
                // onChanged: (text) {print(text);},
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
            ),
            /// AGE
            ListTile(
              leading: const Icon(Icons.person),
              title: TextField(
                controller: userAge,
                style: const TextStyle(color: Colors.black, fontSize: 20),
                // keyboardType: TextInputType.number,
                onSubmitted: (text) {print('AGE: $text');},
                // onChanged: (text) {print(text);},
                decoration: const InputDecoration(
                  labelText: 'Age',
                ),
              ),
            ),
            const SizedBox(height: 20,),
            /// BUTTON
            RaisedButton(
              onPressed:()=> _nextPage(context),
              color: Colors.blue,
              textColor: Colors.white,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),

    );
  }
}
