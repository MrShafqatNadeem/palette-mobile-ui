import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoticeScreen extends StatefulWidget {
  @override
  _NoticeScreenState createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  bool showdata = false;

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
        title: Text(
          "공지사항",
          style: TextStyle(
            color: Color(0xff333333),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            fontFamily: "Noto Sans KR",
          ),
        ),
        centerTitle: true,
        elevation: 1.5,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10.sp,
        ),
        child: Column(
          children: [
            // Divider(
            //   thickness: 1,
            //   height: 0,
            //   endIndent: 15,
            //   indent: 15,
            // ),
            showdata
                ? Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 15, top: 18.sp),
                child: Text(
                  "공지사항입니다.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR",
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            )
                : Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 500,
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          showdata= true;
                        });
                      },
                      child: ListTile(
                        title: Text(
                          "공지사항입니다.",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Noto Sans KR",
                          ),
                        ),
                        trailing: Text(
                          "2021-01-01",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff888888),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Noto Sans KR",
                          ),
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

            showdata
                ? Column(
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
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          showdata = false;
                        });
                      },
                      child: Container(
                        width: 80.sp,
                        height: 29.sp,
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
                                  fontSize: 11.sp,
                                  color: Color(0xff666666),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Noto Sans KR"),
                            )),
                      ),
                    ),
                  ),
                )
              ],
            )
                : Container()
          ],
        ),
      ),
    );
  }
}
