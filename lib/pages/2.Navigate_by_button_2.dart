import 'package:flutter/material.dart';
import 'package:navigator/pages/source_code.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbonCode: 'assets/carbon/2.sourceCode.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=56px&ph=56px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250A%250Aimport%2520%272.Navigate_by_button_2.dart%27%253B%250A%250Aclass%2520NavigateByButton%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520NavigateByButton%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27navigate_by_button_page%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_NavigateByButtonState%2520createState%28%29%2520%253D%253E%2520_NavigateByButtonState%28%29%253B%250A%257D%250A%250Aclass%2520_NavigateByButtonState%2520extends%2520State%253CNavigateByButton%253E%2520%257B%250A%2520%2520%250A%2520%2520void%2520_nextPage%28%29%2520%253D%253E%2520Navigator.of%28context%29.pushNamed%28AfterButton.id%29%253B%250A%2520%2520bool%2520isEntered%2520%253D%2520false%253B%250A%2520%2520%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.black%252C%250A%2520%2520%2520%2520%2520%2520body%253A%2520SafeArea%28%250A%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Center%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520MaterialButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520splashColor%253A%2520Colors.transparent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520highlightColor%253A%2520Colors.transparent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520height%253A%2520200%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520minWidth%253A%2520250%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Container%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520height%253A%2520200%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520width%253A%2520250%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520alignment%253A%2520Alignment.center%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520decoration%253A%2520BoxDecoration%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520border%253A%2520Border.all%28color%253A%2520Colors.greenAccent%252C%2520width%253A%252010%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520borderRadius%253A%2520const%2520BorderRadius.only%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520topLeft%253A%2520Radius.elliptical%28100%252C%2520100%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520bottomLeft%253A%2520Radius.elliptical%28100%252C%2520100%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520topRight%253A%2520Radius.elliptical%28100%252C%2520100%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520bottomRight%253A%2520Radius.elliptical%28100%252C%2520100%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Text%28%27Next%27%252C%2520style%253A%2520TextStyle%28fontSize%253A%252035%252C%2520fontWeight%253A%2520FontWeight.bold%252C%2520color%253A%2520Colors.white%252C%2520letterSpacing%253A%25203.5%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520_nextPage%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%29%253B%250A%2520%2520%257D%250A%257D')));},
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
