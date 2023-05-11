import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alphabet extends StatefulWidget {

  @override
  _alphabetState createState() => _alphabetState();
}

class _alphabetState extends State<alphabet> {

  var _itemImage = [
    Image.asset("assets/alphabet/apple.png"),
    Image.asset("assets/alphabet/ball.png"),
    Image.asset("assets/alphabet/cat.png"),
    Image.asset("assets/alphabet/dog.png"),
    Image.asset("assets/alphabet/elephant.png"),
    Image.asset("assets/alphabet/fish.png"),
    Image.asset("assets/alphabet/grape.png"),
    Image.asset("assets/alphabet/hen.png"),
    Image.asset("assets/alphabet/icecream.png"),
    Image.asset("assets/alphabet/jug.png"),
    Image.asset("assets/alphabet/kite.png"),
    Image.asset("assets/alphabet/lion.png"),
    Image.asset("assets/alphabet/mango.png"),
    Image.asset("assets/alphabet/nest.png"),
    Image.asset("assets/alphabet/orange.png"),
    Image.asset("assets/alphabet/peacock.png"),
    Image.asset("assets/alphabet/queen.png"),
    Image.asset("assets/alphabet/rabbit.png"),
    Image.asset("assets/alphabet/ship.png"),
    Image.asset("assets/alphabet/tiger.png"),
    Image.asset("assets/alphabet/umbrella.png"),
    Image.asset("assets/alphabet/van.png"),
    Image.asset("assets/alphabet/watch.png"),
    Image.asset("assets/alphabet/xylophone.png"),
    Image.asset("assets/alphabet/yak.png"),
    Image.asset("assets/alphabet/zebra.png"),
  ];
  var _text = [
    "Apple",
    "Ball",
    "Cat",
    "Dog",
    "Elephant",
    "Fish",
    "Grapes",
    "Hen",
    "Ice cream",
    "Jug",
    "Kite",
    "Lion",
    "Mango",
    "Nest",
    "Orange",
    "Peacock",
    "Queen",
    "Rabbit",
    "Ship",
    "Tiger",
    "Umbrella",
    "Van",
    "Watch",
    "Xylophone",
    "Yak",
    "Zebra"
  ];

  var _text1 =[
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
  ];
  int index = 0;

  @override
  Widget build(BuildContext  context){
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          "Alphabet",
          style: TextStyle(
            fontSize: 23,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Container(
          //height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=0;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("A",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=1;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("B",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        InkWell(
                          onTap: (){
                            setState(() {
                              index=2;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("C",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        InkWell(
                          onTap: (){
                            setState(() {
                              index=3;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("D",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        InkWell(
                          onTap: (){
                            setState(() {
                              index=4;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("E",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=5;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("F",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=6;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("G",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=7;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("H",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=8;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("I",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=9;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("J",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=10;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("K",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=11;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("L",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=12;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("M",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=13;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("N",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=14;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("O",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=15;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("P",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=16;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("Q",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=17;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("R",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=18;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("S",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=19;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("T",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=20;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("U",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=21;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("V",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=22;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("W",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=23;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("X",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=24;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("Y",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=25;
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            child:Text("Z",
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 10),
                  child: Container(
                    child: _itemImage[index],
                    width: 300,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Text(_text1[index],style: TextStyle(fontSize: 100, fontStyle: FontStyle.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      _text[index],
                      style: TextStyle(fontSize: 22, fontStyle: FontStyle.normal),
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 14,),

              InkWell(
                onTap: (){

                },
                child: Container(
                  color: Colors.blue,
                  height: 50,
                  width: 300,
                  child: Text(textAlign: TextAlign.center, "View on AR"),
                ),
              ),

              const SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}