import 'package:flutter/material.dart';
import 'package:navigator/pages/source_code.dart';

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
        actions: [
          IconButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbonCode: 'assets/carbon/1.sourceCode.png', url: 'https://carbon.now.sh/?bg=rgba%28188%2C200%2C246%2C1%29&t=seti&wt=none&l=dart&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=35px&ph=19px&ln=false&fl=1&fm=Hack&fs=11px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27dart%253Aasync%27%253B%250A%250Aimport%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250A%250Aimport%2520%271.navigate_after_a_while_2.dart%27%253B%250A%250A%250Aclass%2520NavigateAfterAWhile%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520NavigateAfterAWhile%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27navigate_after_a_while_page%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_NavigateAfterAWhileState%2520createState%28%29%2520%253D%253E%2520_NavigateAfterAWhileState%28%29%253B%250A%257D%250A%250Aclass%2520_NavigateAfterAWhileState%2520extends%2520State%253CNavigateAfterAWhile%253E%2520%257B%250A%2520%2520%250A%2520%2520%252F%252F%252F%2520Freeze%2520the%2520state%2520for%2520a%2520while%250A%2520%2520void%2520_openNextPage%28%29%257B%250A%2520%2520%2520%2520Timer%28const%2520Duration%28seconds%253A%25203%29%252C%2520%28%29%257BNavigator.pushReplacementNamed%28context%252C%2520AfterSplashPage.id%29%253B%257D%29%253B%250A%2520%2520%257D%250A%250A%2520%2520%2540override%250A%2520%2520void%2520initState%28%29%2520%257B%250A%2520%2520%2520%2520super.initState%28%29%253B%250A%2520%2520%2520%2520_openNextPage%28%29%253B%250A%2520%2520%257D%250A%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520body%253A%2520SafeArea%28%250A%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Container%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520padding%253A%2520const%2520EdgeInsets.all%2830%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Stack%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520const%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Center%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Image%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520height%253A%252080%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520width%253A%252080%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520image%253A%2520AssetImage%28%27assets%252FinstagramLogo.png%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Align%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520alignment%253A%2520Alignment.bottomCenter%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Text%28%2522From%2520Facebook%2522%252C%2520style%253A%2520TextStyle%28fontSize%253A%252020%252C%2520color%253A%2520Colors.black87%29%252C%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%29%253B%250A%2520%2520%257D%250A%257D')));},
              icon: const Icon(Icons.code, color: Colors.white)
          )
        ],
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
