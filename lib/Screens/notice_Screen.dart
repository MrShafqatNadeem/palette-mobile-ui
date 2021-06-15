import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoticeScreen extends StatefulWidget {
  @override
  _NoticeScreenState createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  bool showdata = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xff757575),
          ),
        ),
        title: Text(
          "공지사항",
          style: TextStyle(
            color: Color(0xff333333),
            fontWeight: FontWeight.bold,
            fontFamily: "Noto Sans KR",
          ),
        ),
        centerTitle: true,
        elevation: 1.5,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: [
            ListTile(
              title: InkWell(
                onTap: (){
                  setState(() {
                    showdata = false;
                  });
                },
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "[중요] ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffE95252),
                          fontFamily: "Noto Sans KR",
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "공지사항입니다",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff333333),
                          fontFamily: "Noto Sans KR",
                          fontWeight: FontWeight.bold))
                ])),
              ),
              trailing: Text(
                "2021-01-01",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff888888),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Noto Sans KR",
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 0,
              endIndent: 15,
              indent: 15,
            ),
            !showdata? Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 15 , top: 15),
                child: Text(
                  "공지사항입니다.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w300,
                    fontFamily: "Noto Sans KR",
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ):
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    ListTile(
                      title: Text(
                        "공지사항입니다.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR",
                        ),
                      ),
                      trailing: Text(
                        "2021-01-01",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR",
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 0,
                      endIndent: 15,
                      indent: 15,
                    )
                  ],
                ),
              ),
            ),
            Column(
                children: [
                  Divider(
                    thickness: 1,
                    height: 0,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Center(
                      child: showdata ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffD1D0D0)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Icon(
                                Icons.keyboard_arrow_left_sharp,
                                color: Color(0xffD1D0D0),
                              ))),
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR",
                            ),
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff888888),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR",
                            ),
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff888888),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR",
                            ),
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff888888),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR",
                            ),
                          ),
                          Text(
                            "4",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff888888),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR",
                            ),
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff888888),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR",
                            ),
                          ),
                          Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffD1D0D0)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                                color: Color(0xffD1D0D0),
                              )))
                        ],
                      ):InkWell(
                        onTap: (){
                          setState(() {
                            showdata = true;
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xffF9F8F8),
                              border: Border.all(
                                color: Color(0xffE1E1E1),
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                                "목록",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff666666),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
