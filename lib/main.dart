import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: (){
          // Add functionality
        },
        child: Text(btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor
          ),
        ),
        shape:  CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: null,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    Padding(padding: EdgeInsets.all(10.0),
                      child: Text('0',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white,
                        fontSize: 100
                        ),
                      ),
                    
                    ),
                ],
                
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Here the button function will be called where we will pass in some arguments
                calcbutton("AC", Colors.grey, Colors.black),
                calcbutton("+/-", Colors.grey, Colors.black),
                calcbutton("%", Colors.grey, Colors.black),
                calcbutton("/", Colors.amber.withAlpha(713), Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Here the button function will be called where we will pass in some arguments
                calcbutton("7", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("8", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("9", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("x", Colors.amber.withAlpha(713), Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Here the button function will be called where we will pass in some arguments
                calcbutton("4", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("5", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("6", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("-", Colors.amber.withAlpha(713), Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Here the button function will be called where we will pass in some arguments
                calcbutton("1", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("2", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("3", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("+", Colors.amber.withAlpha(713), Colors.white),
              ],
            ),
            SizedBox(height: 10,),
                 // last row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // this is the 0 button
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed: (){
                    // button function
                  },
                  shape: StadiumBorder(),
                  child: Text("0",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                  ),
                  ),
                  color: Colors.grey.withAlpha(60),
                ),
                calcbutton(".", Colors.grey.withAlpha(60), Colors.white),
                calcbutton("=", Colors.amber.withAlpha(713), Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}

