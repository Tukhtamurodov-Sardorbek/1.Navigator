import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '1.navigate_after_a_while.dart';
import '2.Navigate_by_button.dart';
import '3.Send_Data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, String> _buildCards = {'assets/gif/automatic navigation.gif': 'Navigate automatically', 'assets/gif/button.gif' :'Navigate by button', 'assets/gif/send_data.gif' : 'Send And Receive Data', 'assets/2.sourceCode.png' : 'Useful Links'};
  final List<String> _pagesID = [NavigateAfterAWhile.id, NavigateByButton.id, SendData.id, 'https://medium.com/flutter-community/flutter-push-pop-push-1bb718b13c31'];
  void _nextPage(String id){
    Navigator.of(context).pushNamed(id);
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: _buildCards.length,
            itemBuilder: (context, index){
              return _card(_buildCards.keys.toList()[index], _buildCards.values.toList()[index], _pagesID[index]);
            },
          ),
        ),
      ),
    );
  }


  Widget _card(String mediaPath, String title, String id){
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: MaterialButton(
        highlightColor: Colors.transparent,
        color: Colors.black,
        splashColor: Colors.white,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10,
            shadowColor: Colors.white,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 15),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Text(title, style: TextStyle(letterSpacing: 6.5, color: Colors.white, backgroundColor: const Color(0xFF0E3311).withOpacity(0.6), fontWeight: FontWeight.bold, fontSize: 30), textAlign: TextAlign.center,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(mediaPath),
                    fit: title == 'Useful Links' ? BoxFit.fitWidth : BoxFit.cover,
                  )
              ),
            )
        ),
        onPressed: (){
          title == 'Useful Links' ? _launchURL(id) : _nextPage(id);
        },
      ),
    );
  }
}
