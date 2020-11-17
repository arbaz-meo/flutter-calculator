import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var num1=0,num2=0,sum=0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void doadd()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum= num1 + num2;
    });
  }

  void dosub()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum= num1 - num2;
    });
  }

  void domul()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum= num1 * num2;
    });
  }

  void dodiv()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum= num1 ~/ num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("output :$sum",
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purpleAccent
              ),

            ),

           new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration(
               hintText: "enter number 1"

             ),
             controller: t1,
           ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "enter number 2"
              ),
              controller: t2,
            ),
            new Padding
              (
                padding:const EdgeInsets.only(top: 20.0)
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: doadd,
                ),
                new MaterialButton(child: new Text("-"),
                  color: Colors.greenAccent,
                  onPressed: dosub,
                )

              ],
            ),
            new Padding(
                padding:const EdgeInsets.only(top: 20.0)
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(child: new Text("*"),
                  color: Colors.greenAccent,
                  onPressed: domul,
                ),
                new MaterialButton(child: new Text("/"),
                  color: Colors.greenAccent,
                  onPressed: dodiv,
                )

              ],
            )

          ],

        )
      ),
    );
  }
}
