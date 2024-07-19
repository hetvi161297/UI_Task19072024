import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:ui_task/Screen/ProfilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  List<String> _images = [
    'assets/images/ic_01.png',
    'assets/images/ic_02.png',
    'assets/images/ic_03.png',
    'assets/images/ic_04.png',
    'assets/images/ic_05.png',
    'assets/images/ic_06.png',
    'assets/images/ic_07.png',
    'assets/images/ic_08.png',
    'assets/images/ic_09.png',
    'assets/images/ic_10.png',
  ];
  List<String> _imagesname = [
    'Name01',
    'Name02',
    'Name03',
    'Name04',
    'Name05',
    'Name06',
    'Name07',
    'Name08',
    'Name09',
    'Name10',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 55.sp,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 15),
                child: Text(
                  "LOGO",
                  style: TextStyle(
                      color: Color(0XFF5D5FEF),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'RobotoRegular',
                      fontSize: 24.sp),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFFFFFFF),
                    isDense: true,
                    hintText: "검색어를 입력해주세요",
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFFB3B1B1),
                    ), // TextStyle
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.indigo,
                    ), // Icon

                    border: GradientOutlineInputBorder(
                        width: 2.5,
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 3, 212, 244),
                          Colors.indigo
                        ]))),
              ),
            ), //
            // Container(
            //   child: Padding(
            //     padding: const EdgeInsets.all(25.0),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //           colors: [
            //             Color(0XFF74FBDE),
            //             Color(0XFF3C41BF),
            //           ],
            //         ),
            //         borderRadius: BorderRadius.circular(15),
            //       ),
            //       height: 36.sp,
            //       width: 328.sp,
            //       child: Padding(
            //         padding: const EdgeInsets.all(1.5),
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Row(
            //             children: [
            //               Text('검색어를 입력하세요'),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Container(width: 360.w, height: 221.h, child: ImageSliderScreen()),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 18, right: 15),
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "제일핫한리뷰를만나보세요",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "리뷰️  랭킹⭐ top 3",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/images/ic_back.png",
                          width: 7,
                          height: 14,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/ic_list1.png",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "LG전자 스탠바이미 27ART10AKPL (스탠",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "• 화면을 이동할 수 있고 전환도 편리하다는",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "• 스탠바이미는 사랑입니다!️",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/ic_star.png",
                                        width: 15,
                                        height: 15,
                                      ),
                                      Text(
                                        "  4.89",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Color(0XFFFFD233)),
                                      ),
                                      Text(
                                        "  (216)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Color(0XFFF0F0F0),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("LG전자"),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0XFFF0F0F0),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text("편리성"),
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/ic_list2.png",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "LG전자 스탠바이미 27ART10AKPL (스탠",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "• 화면을 이동할 수 있고 전환도 편리하다는",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "• 스탠바이미는 사랑입니다!️",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/ic_star.png",
                                        width: 15,
                                        height: 15,
                                      ),
                                      Text(
                                        "  4.89",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Color(0XFFFFD233)),
                                      ),
                                      Text(
                                        "  (216)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Color(0XFFF0F0F0),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("LG전자"),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0XFFF0F0F0),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text("편리성"),
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/ic_list3.png",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "LG전자 스탠바이미 27ART10AKPL (스탠",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "• 화면을 이동할 수 있고 전환도 편리하다는",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "• 스탠바이미는 사랑입니다!️",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/ic_star.png",
                                        width: 15,
                                        height: 15,
                                      ),
                                      Text(
                                        "  4.89",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Color(0XFFFFD233)),
                                      ),
                                      Text(
                                        "  (216)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Color(0XFFF0F0F0),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("LG전자"),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0XFFF0F0F0),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text("편리성"),
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(
                            "골드 계급 사용자들이예요",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "베스트 리뷰어 🏆 Top10",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                        height: 144.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _images.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ProfilePage(
                                              _images[index],
                                              _imagesname[index]),
                                        ));
                                  },
                                  child: Image.asset(
                                    _images[index],
                                    width: 62,
                                    height: 104,
                                  ),
                                ),
                              );
                            }

                            // Padding(
                            //   padding: const EdgeInsets.all(5.0),
                            //   child: Image.asset(
                            //     'assets/images/ic_02.png',
                            //     width: 62,
                            //     height: 104,
                            //   ),
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.all(5.0),
                            //   child: Image.asset(
                            //     'assets/images/ic_03.png',
                            //     width: 62,
                            //     height: 104,
                            //   ),
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.all(5.0),
                            //   child: Image.asset(
                            //     'assets/images/ic_04.png',
                            //     width: 62,
                            //     height: 104,
                            //   ),
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.all(5.0),
                            //   child: Image.asset(
                            //     'assets/images/ic_05.png',
                            //     width: 62,
                            //     height: 104,
                            //   ),
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.all(5.0),
                            //   child: Image.asset(
                            //     'assets/images/ic_06.png',
                            //     width: 62,
                            //     height: 104,
                            //   ),
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.all(5.0),
                            //   child: Image.asset(
                            //     'assets/images/ic_07.png',
                            //     width: 62,
                            //     height: 104,
                            //   ),
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.all(5.0),
                            //   child: Image.asset(
                            //     'assets/images/ic_08.png',
                            //     width: 62,
                            //     height: 104,
                            //   ),
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.all(5.0),
                            //   child: Image.asset(
                            //     'assets/images/ic_09.png',
                            //     width: 62,
                            //     height: 104,
                            //   ),
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.all(5.0),
                            //   child: Image.asset(
                            //     'assets/images/ic_10.png',
                            //     width: 62,
                            //     height: 104,
                            //   ),
                            // ),
                            ))
                  ],
                )),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class ImageSliderScreen extends StatefulWidget {
  @override
  _ImageSliderScreenState createState() => _ImageSliderScreenState();
}

class _ImageSliderScreenState extends State<ImageSliderScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> _images = [
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return Image.asset(
                _images[index],
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(
        Container(
          width: 5,
          height: 5,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i ? Colors.white : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}
