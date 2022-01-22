import 'package:flutter/material.dart';
import 'package:navigator/pages/1.navigate_after_a_while.dart';
import 'package:navigator/pages/1.navigate_after_a_while_2.dart';
import 'package:navigator/pages/2.Navigate_by_button.dart';
import 'package:navigator/pages/2.Navigate_by_button_2.dart';
import 'package:navigator/pages/3.Receive_Data_And_Go_Back_3.dart';
import 'package:navigator/pages/3.Send_Data.dart';
import 'package:navigator/pages/3.Receive_And_Send_Data_2.dart';
import 'package:navigator/pages/home_page.dart';
import 'package:navigator/pages/source_code.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        NavigateAfterAWhile.id: (context) => const NavigateAfterAWhile(),
        AfterSplashPage.id: (context) => const AfterSplashPage(),
        NavigateByButton.id: (context) => const NavigateByButton(),
        AfterButton.id: (context) => const AfterButton(),
        SendData.id: (context) => const SendData(),
        ReceiveAndSendData.id: (context) => const ReceiveAndSendData(name: '', age: 0),
        ReceiveDataAndGoBack.id: (context) => const ReceiveDataAndGoBack(message: ''),
        SourceCode.id: (context) => const SourceCode(carbonCode: '', url: ''),

      }
    );
  }
}
