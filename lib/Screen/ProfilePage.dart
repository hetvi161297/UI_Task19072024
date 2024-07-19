import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  String imag;
  String imagesname;
  ProfilePage(this.imag, this.imagesname, {super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState(imag, imagesname);
}

class _ProfilePageState extends State<ProfilePage> {
  String imag;
  String imagesname;

  _ProfilePageState(this.imag, this.imagesname);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return SingleChildScrollView(
      child: Container(
        child: Material(
          child: Container(
            padding: EdgeInsets.fromLTRB(0.0, statusBarHeight, 0.0, 0.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(color: Colors.white, child: getHeader(context)),
                  const SizedBox(
                    width: double.infinity,
                    height: 2,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            imag,
                            width: 140,
                            height: 140,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/ic_crown.png"),
                            const Text(
                              "   골드",
                              style: TextStyle(color: Color(0XFFFFD233)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0XFFF0F0F0),
                                  borderRadius: BorderRadius.circular(4)),
                              child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("조립컴 업체를 운영하며 리뷰를 작성합니다."))),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10.0, right: 20, left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "작성한 리뷰",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  const Text(
                                    " 총 35개",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors
                                              .grey, //                   <--- border color
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            '최신순',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0),
                                            child: Image.asset(
                                                'assets/images/ic_polygon.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Divider(
                            color: Color.fromARGB(255, 205, 195, 195),
                            height: 2,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 20, left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/ic_list4.png",
                                    width: 104,
                                    height: 104,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "AMD 라이젠 5 5600X 버미어",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("정품 멀티팩"),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/ic_rate.png',
                                                height: 21,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                  "4.07",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Divider(
                                  color: Color.fromARGB(255, 205, 195, 195),
                                  height: 2,
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imag,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          imagesname,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/ic_rate.png',
                                                height: 10,
                                              ),
                                              Text(
                                                "2022.12.09",
                                                style: TextStyle(fontSize: 8),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/images/ic_save.png",
                                        width: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "“가격 저렴해요”",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "“CPU온도 고온”",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "“서멀작업 가능해요”",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "“게임 잘 돌아가요”",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/ic_tag.png",
                                    width: 8,
                                    height: 16,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/ic_tag1.png",
                                      width: 8,
                                      height: 16,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/ic_frame1.png",
                                      width: 101,
                                      height: 80,
                                    ),
                                    Image.asset(
                                      "assets/images/ic_frame2.png",
                                      width: 101,
                                      height: 80,
                                    ),
                                    Image.asset(
                                      "assets/images/ic_frame3.png",
                                      width: 101,
                                      height: 80,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Divider(
                                  color: Color.fromARGB(255, 205, 195, 195),
                                  height: 2,
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    Image.asset("assets/images/ic_msg.png"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("댓글 달기.."),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget getTitle() {
  return const Column(
    children: [
      Text('랭킹 1위',
          style: TextStyle(fontSize: 10.0), textAlign: TextAlign.center),
      Text('베스트 리뷰어',
          style: TextStyle(fontSize: 16.0, color: Colors.black),
          textAlign: TextAlign.center),
    ],
  );
}

Widget getBackButton(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Image.asset(
      'assets/images/ic_arrow.png',
      width: 21,
      height: 13,
    ),
  );
}

Row getHeader(BuildContext context) {
  return Row(
    children: <Widget>[
      Expanded(
        child: getBackButton(context),
      ),
      const Spacer(),
      getTitle(),
      const Spacer(flex: 2)
    ],
  );
}
