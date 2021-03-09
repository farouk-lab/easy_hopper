//import 'package:adobe_xd_project/planeHome19.dart';
//import 'dart:ffi';
import 'dart:async';
import 'package:easy_hopper/widgets/slide_dots.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/slide_items.dart';
import '../model/slide.dart';

void main() {
  runApp(EasyHopper());
}

class EasyHopper extends StatefulWidget {
  @override
  _EasyHopperState createState() => _EasyHopperState();
}

class _EasyHopperState extends State<EasyHopper> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 6), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        //appBar: AppBar(
        //backgroundColor: Colors.blue.shade300,

        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: slideList.length,
                        itemBuilder: (ctx, i) => SlideItem(i),
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 35),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0; i < slideList.length; i++)
                                  if (i == _currentPage)
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // ignore: deprecated_member_use
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(15),
                        onPressed: () {
                          print('working');
                        },
                        color: Colors.blue,
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Already have an account?',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
