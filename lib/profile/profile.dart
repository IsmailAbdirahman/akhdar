import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3, initialIndex: 2);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: new IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'حسابي',
                style: TextStyle(
                    fontFamily: ArabicFonts.Cairo,
                    package: 'google_fonts_arabic',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        drawer: Container(
          width: 800,
          color: Colors.green[900],
          child: Drawer(
            child: Container(
              color: Colors.green[800],
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  SizedBox(
                    height: 210,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 207.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text('السجل',
                          style: TextStyle(
                              fontFamily: ArabicFonts.Cairo,
                              package: 'google_fonts_arabic',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                            size: 35,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 180.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text('الإعجابات',
                          style: TextStyle(
                              fontFamily: ArabicFonts.Cairo,
                              package: 'google_fonts_arabic',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 35,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 172.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text('مساعدة ',
                          style: TextStyle(
                              fontFamily: ArabicFonts.Cairo,
                              package: 'google_fonts_arabic',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 35,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 178.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text('الإعدادات',
                          style: TextStyle(
                              fontFamily: ArabicFonts.Cairo,
                              package: 'google_fonts_arabic',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 35,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 39,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: NestedScrollView(
          //   controller: _scrollController,
          headerSliverBuilder:
              (BuildContext context, bool innerViewIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  //  collapseMode: CollapseMode.parallax,
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              color: Colors.green[800],
                              height: 90,
                              width: 90,
                              child: Icon(
                                Icons.person,
                                size: 70,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Afnan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 200,
                                height: 45,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('العضوية العادية',
                                          style: TextStyle(
                                              fontFamily: ArabicFonts.Cairo,
                                              package: 'google_fonts_arabic',
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey)),
                                    ),
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  height: 45,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(80),
                                    child: Container(
                                      height: 0,
                                      width: 90,
                                      child: RaisedButton(
                                        onPressed: () {},
                                        child: Text('ترقية',
                                            style: TextStyle(
                                                fontFamily: ArabicFonts.Cairo,
                                                package: 'google_fonts_arabic',
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white)),
                                        color: Colors.green[800],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            width: 108,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffdcdfe3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  size: 16,
                                ),
                                Text('مصر',
                                    style: TextStyle(
                                        fontFamily: ArabicFonts.Cairo,
                                        package: 'google_fonts_arabic',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/egypt.png'),
                                    width: 30,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(' نقطة',
                                style: TextStyle(
                                    fontFamily: ArabicFonts.Cairo,
                                    package: 'google_fonts_arabic',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              '12',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 18),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 6.0, left: 3),
                                      child: Text('اخضر ',
                                          style: TextStyle(
                                              fontFamily: ArabicFonts.Cairo,
                                              package: 'google_fonts_arabic',
                                              fontSize: 9.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                expandedHeight: 350.0,
                pinned: true,
                floating: true,
                elevation: 0.0,
                forceElevated: innerViewIsScrolled,
                bottom: TabBar(
                  labelColor: Colors.blue,
                  tabs: <Widget>[
                    Text(
                      "اللوحة",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "الترتيب",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "الرصيد",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                  controller: _tabController,
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[Tartiib(), Tartiib(), ChartsInfo()],
            controller: _tabController,
          ),
        ),
      ),
    );
  }

//   Widget stackName() {
//     return Stack(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(50),
//           child: Container(
//             height: 40,
//             width: 40,
//             color: Colors.green,
//           ),

//   }
}

class ChartsInfo extends StatelessWidget {
  List<String> chartImages = [
    'assets/images/aa.jpg',
    'assets/images/bb.jpg',
    'assets/images/bb.jpg',
    'assets/images/aa.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: chartImages.map((e) => Image.asset(e)).toList()));
  }
}

class Tartiib extends StatelessWidget {
  List<String> tartiibImages = [
    'assets/images/CCC.jpg',
    'assets/images/MMM.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: tartiibImages.map((e) => Image.asset(e)).toList()));
  }
}
