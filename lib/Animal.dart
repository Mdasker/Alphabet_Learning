import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animal extends StatefulWidget {
  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  var _itemImage = [
    Image.asset("assets/alphabet/cat.png"),
    Image.asset("assets/alphabet/dog.png"),
    Image.asset("assets/alphabet/elephant.png"),
    Image.asset("assets/alphabet/lion.png"),
    Image.asset("assets/alphabet/rabbit.png"),
    Image.asset("assets/alphabet/tiger.png"),
    Image.asset("assets/alphabet/yak.png"),
    Image.asset("assets/alphabet/zebra.png"),
  ];

  var _text2 = [
    "Cat",
    "Dog",
    "Elephant",
    "Lion",
    "Rabbit",
    "Tiger",
    "Yak",
    "Zebra",
  ];
  var _text3 = [
    "The cat (Felis catus) is a domestic species of small carnivorous mammal.It is the only domesticated species in the family Felidae and is commonly referred to as the domestic cat or house cat to distinguish it from the wild members of the family.",
    "The dog is a domesticated descendant of the wolf. Also called the domestic dog, it is derived from the extinct Pleistocene wolf, and the modern wolf is the dog's nearest living relative.",
    "Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant.",
    "The world's most social felines, lions roam the savannas and grasslands of the African continent, hunting cooperatively and raising cubs in prides.",
    "Rabbits have long ears, a short tail, long hind legs, and continuously growing incisors. Most species are gray or brown and range in size from 10 to 18 in.",
    "The tiger is the largest living cat species and a member of the genus Panthera.The tiger was first scientifically described in 1758.",
    "Yaks are heavily built animals with bulky frames, sturdy legs, rounded, cloven hooves, and extremely dense, long fur that hangs down lower than the belly.",
    "Zebras (subgenus Hippotigris) are African equines with distinctive black-and-white striped coats",
  ];
  var _text = [
    "Cat",
    "Dog",
    "Elephant",
    "Lion",
    "Rabbit",
    "Tiger",
    "Yak",
    "Zebra"
  ];
  int index = 0;
  bool show = false;





  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Animal",
            style: TextStyle(
              fontSize: 23,
            ),
          ),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Expanded(
                          child: Column(
                            children: [
                              TextButton(
                                child :Text(_text2[index],style: TextStyle(fontSize: 20),) ,
                                onPressed:() {
                                  setState(() {
                                    show = true;
                                  });
                                },
                              ),
                              if(show == true)Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(_text3[index],style: TextStyle(),textAlign: TextAlign.center,),
                                  ),
                                  TextButton(
                                    child :const Text("Show less",style: TextStyle(fontSize: 20,color: Colors.red),) ,
                                    onPressed:() {
                                      setState(() {
                                        show = false;
                                      });
                                    },
                                  ),
                                ],
                              ),


                              Expanded(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: IconButton(
                                        icon:const Icon(Icons.navigate_before_outlined,size: 50,color: Colors.blue,),
                                        onPressed: (){
                                          if (index >= 1 ) {
                                            setState(() {
                                              _itemImage[index--];
                                              _text2[index--];
                                            });
                                          }

                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 50.0, bottom: 30),
                                        child: Container(
                                          child: _itemImage[index],
                                          width: 300,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: IconButton(
                                        icon:const Icon(Icons.navigate_next_outlined,size: 50,color: Colors.blue,),
                                        onPressed: (){
                                          if (index < _itemImage.length - 1) {
                                            setState(() {
                                              _itemImage[index++];
                                              _text2[index++];
                                            });
                                          }

                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10.0),
                              child: Container(
                                height: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          index = 0;
                                          show = false;
                                        });
                                      },
                                      child: Image.asset("assets/alphabet/cat.png"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          index = 1;
                                          show = false;
                                        });
                                      },
                                      child: Image.asset("assets/alphabet/dog.png"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          index = 2;
                                          show = false;
                                        });
                                      },
                                      child: Image.asset("assets/alphabet/elephant.png"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          index = 3;
                                          show = false;
                                        });
                                      },
                                      child: Image.asset("assets/alphabet/lion.png"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          index = 4;
                                          show = false;
                                        });
                                      },
                                      child: Image.asset("assets/alphabet/rabbit.png"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          index = 5;
                                          show = false;
                                        });
                                      },
                                      child: Image.asset("assets/alphabet/tiger.png"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          index = 6;

                                        });
                                      },
                                      child: Image.asset("assets/alphabet/yak.png"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          index = 7;

                                        });
                                      },
                                      child: Image.asset("assets/alphabet/zebra.png"),
                                    ),

                                    const SizedBox(height: 20,),

                                  ],
                                ),
                              ),
                            )
                        ),
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
                        SizedBox(height: 20,)
                      ]
                  )
              ),
            ),
          ],
        )
    );
  }
}
