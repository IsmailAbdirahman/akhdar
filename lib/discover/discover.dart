import 'dart:async';
import 'dart:io';

import 'package:akhdar/displayData.dart';
import 'package:akhdar/model/discoverModel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class Discover extends StatefulWidget {
  Discover({Key key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<String> _calculation = Future<String>.delayed(
      Duration(seconds: 5),
      () => 'Data Loaded',
    );

    return FutureBuilder(
      future: _calculation,
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
              appBar: AppBar(
                toolbarHeight: 77,
                backgroundColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'إستكشف',
                      style: TextStyle(
                          fontFamily: ArabicFonts.Cairo,
                          package: 'google_fonts_arabic',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                leading: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 40,
                ),
              ),
              body: ListView.builder(
                  itemCount: discoverInfo.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DisplayDiscoverInfo(
                      question: discoverInfo[index].question,
                      qoute: discoverInfo[index].quote,
                      hashtag: discoverInfo[index].hashtag,
                    );
                  }));
        } else {
          return loadingAnimation();
        }
      },
    );
  }

  /// This is the animation loading, to use this function,
  /// first i created a fake loading data in [_calculation] after completing 5 seconds
  /// it will display the discover screen
  Widget loadingAnimation() {
    return SizedBox(
      width: 220.0,

      child: TextLiquidFill(
        text: 'أخضر  ',
        waveColor: Colors.green,
        waveDuration: Duration(seconds: 1),
        boxBackgroundColor: Colors.white,
        textStyle: TextStyle(
          fontFamily: ArabicFonts.Cairo,
          package: 'google_fonts_arabic',
          fontSize: 50.0,
        ),
        boxHeight: 220.0,
      ),
    );
  }
}

class DisplayDiscoverInfo extends StatelessWidget {
  final String qoute;
  final String question;
  final List<String> hashtag;

  DisplayDiscoverInfo({this.question, this.qoute, this.hashtag});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          quoteWidget(qoute),
          questionWidget(question),
          hashtagWidget(hashtag),
          Divider(thickness: 3,)

        ],
      ),
    );
  }

  Widget questionWidget(String question) {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 18.0),
          child: Text(
            question,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: ArabicFonts.Cairo,
              package: 'google_fonts_arabic',
            ),
          ),
        ));
  }

  Widget hashtagWidget(List<String> hashtag) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: hashtag
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Chip(
                label: Text(
                  e,
                  style: TextStyle(color: Colors.blue[900], fontSize: 17),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget quoteWidget(String quote) {
    return Column(
      children: [
        Container(
          height: 350,
          width: 350,
          child: Card(
              color: Colors.green[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              child: Stack(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(
                      30.0,
                    ),
                    child: Text(quote,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: ArabicFonts.Cairo,
                          package: 'google_fonts_arabic',
                        )),
                  )),
                  Positioned(
                      top: 290,
                      left: 290,
                      child: Column(
                        children: [
                          Text('أخضر',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: ArabicFonts.Cairo,
                                package: 'google_fonts_arabic',
                              )),
                          Text('akhd.com',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                fontFamily: ArabicFonts.Cairo,
                                package: 'google_fonts_arabic',
                              )),
                        ],
                      )),
                  Positioned(
                    left: 290,
                    top: 12,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10.0),
          child: Row(
            children: [
              Icon(Icons.ios_share),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Icon(Icons.favorite_border),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  '18',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 235.0),
                child: Text(
                  '1 / 11',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
