import 'package:flutter/material.dart';

class LoadCompaignScreen extends StatefulWidget {
  String title = '';
  String subtitle = '';
  String recnumber = '';

  LoadCompaignScreen({this.title, this.subtitle, this.recnumber});

  @override
  _LoadCompaignScreenState createState() => _LoadCompaignScreenState();
}

class _LoadCompaignScreenState extends State<LoadCompaignScreen> {
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
          "캠페인 불러오기",
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
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 15, left: 15),
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.65,
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 155,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Image.asset("assets/images/test.jpg",
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 40,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color(0xffE95252),
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                          child: Text(
                            "진행중",
                            style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Noto Sans KR"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Blog",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff00C5B1),
                            //  fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " 진행중",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff333333),
                            fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.w300))
                  ])),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    index == 0 ? widget.title : "[대전서구] 유달리 헤어샵",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Noto Sans KR"),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    index == 0 ? widget.subtitle : "두피,모발 정밀검사 +관리",
                    style: TextStyle(
                        fontSize: 10.5,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    index == 0
                        ? "신청 26 / " + widget.recnumber + "명"
                        : "신청 26 / 6명",
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffEEB4B4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "10만원",
                        style: TextStyle(
                            fontSize: 9,
                            color: Color(0xffE95252),
                            fontWeight: FontWeight.w300,
                            fontFamily: "Noto Sans KR"),
                      ),
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }
}
