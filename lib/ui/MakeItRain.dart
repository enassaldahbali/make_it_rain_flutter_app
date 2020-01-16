import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakItRainState();
  }
}

class MakItRainState extends State<MakeItRain> {
  int _moneyCounter=0;
  @override
  Widget build(BuildContext context) {
    void _rainMoney(){
      setState(() {
        _moneyCounter=_moneyCounter+100;
        if(_moneyCounter>=10000)
          {

          }
        //imortant :- setState is called each time when we want to change or update the UI
      });

    }

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain!"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Get Rich!",
                style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 29.9,
                    fontWeight: FontWeight.w400),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new Text(
                  "\$$_moneyCounter",
                  style: new TextStyle(
                      color:_moneyCounter>2000?Colors.blue:Colors.red,
                      fontWeight: FontWeight.w800,
                      fontSize: 46.9),
                ),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new FlatButton(
                  color:Colors.lightGreen ,
                    textColor: Colors.white70,
                    onPressed: _rainMoney,
                    child: new Text(
                      "Let It Rain!",
                      style: new TextStyle(fontSize: 19.9),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
