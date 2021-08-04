import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String search = '';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        orientation: Orientation.portrait);
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
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(right: 20.sp, left: 20.sp),
        child: Column(
          children: [
            Theme(
              data: new ThemeData(
                primaryColor: Color(0xffEA9FA3),
                primaryColorDark: Color(0xffDDDDDD),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 11.sp),
                height: 46.sp,
                child: TextFormField(
                  onChanged: (v) {
                    setState(() {
                      search = v;
                    });
                  },
                  decoration: new InputDecoration(
                      hintText: "검색어를 입력하세요.",
                      hintStyle: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                      suffixIcon: Icon(Icons.search),
                      enabledBorder: new UnderlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      )),
                ),
              ),
            ),
            search.length > 0
                ? Column(
                    children: [
                      SizedBox(
                        height: 30.5.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 130.sp,
                            height: 130.sp,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset("assets/images/test.jpg",
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: "Blog",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xff00C5B1),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "yanoljayache",
                                    )),
                                TextSpan(
                                    text: " 1일 남음",
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        color: Color(0xff333333),
                                        fontFamily: "Noto Sans KR",
                                        fontWeight: FontWeight.w500))
                              ])),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "[대전서구] 유달리 헤어샵",
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Noto Sans KR",
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "두피,모발 정밀검사 +관리",
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Noto Sans KR",
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "신청 26 / 6명",
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Noto Sans KR",
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                width: 46.sp,
                                height: 22.sp,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffE95252)),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    "10만원",
                                    style: TextStyle(
                                      color: Color(0xffE95252),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Noto Sans KR",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(
                        height: 241.5.sp,
                      ),
                      Text(
                        "검색 기록이 없습니다.",
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR",
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
