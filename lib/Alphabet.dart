import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alphabet extends StatefulWidget {

  @override
  _alphabetState createState() => _alphabetState();
}

class _alphabetState extends State<alphabet> {

  int currentIndex = 0;
  final ScrollController _listController = ScrollController();
  final List<String> alphabetList = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  final PageController _pageController = PageController();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void goToPreviousAlphabet() {
    setState(() {
      currentIndex = currentIndex > 0 ? currentIndex - 1 : 0;
    });
  }

  void goToNextAlphabet() {
    setState(() {
      currentIndex = currentIndex < alphabetList.length - 1 ? currentIndex + 1 : alphabetList.length - 1;
    });
  }

  void _scrollToSelectedIndex(int index) {
    final double itemWidth = 76.0; // Width of each item in the list
    final double screenWidth = MediaQuery.of(context).size.width;
    final double scrollOffset = (index * itemWidth) - (screenWidth / 2) + (itemWidth / 2);

    _pageController.jumpToPage(index);
    _listController.animateTo(
      scrollOffset,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabets'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _listController,
              physics: BouncingScrollPhysics(),
              itemCount: alphabetList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                      _pageController.animateToPage(
                        index,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                      _scrollToSelectedIndex(index);
                    });
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: currentIndex == index ? Colors.blue : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        alphabetList[index],
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.primaryVelocity != 0) {
                  if (details.primaryVelocity! > 0) {
                    goToPreviousAlphabet();
                  } else {
                    goToNextAlphabet();
                  }
                  _scrollToSelectedIndex(currentIndex);
                }
              },
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                    _scrollToSelectedIndex(currentIndex);
                  });
                },
                itemCount: alphabetList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          alphabetList[index],
                          style: TextStyle(fontSize: 65),
                        ),
                        SizedBox(height: 20),
                        Image.asset(
                          getImagePath(alphabetList[index]),
                          width: 200,
                          height: 200,
                        ),
                        SizedBox(height: 20),
                        Text(
                          getImageName(alphabetList[index]),
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            // Perform action when "View in AR" button is pressed
                            // You can add your own logic here
                          },
                          child: Text("View in AR"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            width: 60.0,
            child: IconButton(
              onPressed: () {
                goToNextAlphabet();
                _scrollToSelectedIndex(currentIndex);
              },
              icon: Icon(Icons.arrow_right),
            ),
          ),
        ],
      ),
    );
  }
}


String getImageName(String alphabet) {
  switch (alphabet) {
    case 'A':
      return 'Apple';
    case 'B':
      return 'Ball';
    case 'C':
      return 'Cat';
    case 'D':
      return 'Dog';
    case 'E':
      return 'Elephant';
    case 'F':
      return 'Fish';
    case 'G':
      return 'Grapes';
    case 'H':
      return 'Hen';
    case 'I':
      return 'Ice cream';
    case 'J':
      return 'Jug';
    case 'K':
      return 'Kite';
    case 'L':
      return 'Lion';
    case 'M':
      return 'Mango';
    case 'N':
      return 'Nest';
    case 'O':
      return 'Orange';
    case 'P':
      return 'Peacock';
    case 'Q':
      return 'Queen';
    case 'R':
      return 'Rabbit';
    case 'S':
      return 'Ship';
    case 'T':
      return 'Tiger';
    case 'U':
      return 'Umbrella';
    case 'V':
      return 'Van';
    case 'W':
      return 'Watch';
    case 'X':
      return 'Xylophone';
    case 'Y':
      return 'Yak';
    case 'Z':
      return 'Zebra';
    default:
      return '';
  }
}
String getImagePath(String alphabet) {
  switch (alphabet) {
    case 'A':
      return 'assets/alphabet/apple.png';
    case 'B':
      return 'assets/alphabet/ball.png';
    case 'C':
      return 'assets/alphabet/cat.png';
    case 'D':
      return 'assets/alphabet/dog.png';
    case 'E':
      return 'assets/alphabet/elephant.png';
    case 'F':
      return 'assets/alphabet/fish.png';
    case 'G':
      return 'assets/alphabet/grape.png';
    case 'H':
      return 'assets/alphabet/hen.png';
    case 'I':
      return 'assets/alphabet/icecream.png';
    case 'J':
      return 'assets/alphabet/jug.png';
    case 'K':
      return 'assets/alphabet/kite.png';
    case 'L':
      return 'assets/alphabet/lion.png';
    case 'M':
      return 'assets/alphabet/mango.png';
    case 'N':
      return 'assets/alphabet/nest.png';
    case 'O':
      return 'assets/alphabet/orange.png';
    case 'P':
      return 'assets/alphabet/peacock.png';
    case 'Q':
      return 'assets/alphabet/queen.png';
    case 'R':
      return 'assets/alphabet/rabbit.png';
    case 'S':
      return 'assets/alphabet/ship.png';
    case 'T':
      return 'assets/alphabet/tiger.png';
    case 'U':
      return 'assets/alphabet/umbrella.png';
    case 'V':
      return 'assets/alphabet/van.png';
    case 'W':
      return 'assets/alphabet/watch.png';
    case 'X':
      return 'assets/alphabet/xylophone.png';
    case 'Y':
      return 'assets/alphabet/yak.png';
    case 'Z':
      return 'assets/alphabet/zebra.png';
    default:
      return '';

  }
}
