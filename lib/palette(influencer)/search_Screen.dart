import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
        ),
      ),
    );
  }
}
