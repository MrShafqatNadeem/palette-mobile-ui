import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FAQScreeni extends StatefulWidget {
  @override
  _FAQScreeniState createState() => _FAQScreeniState();
}

class _FAQScreeniState extends State<FAQScreeni> {
  bool showdata = true;

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
          "FAQ",
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
            // ListTile(
            //     title: InkWell(
            //       onTap: () {
            //         setState(() {
            //           showdata = false;
            //         });
            //       },
            //       child: Text(
            //         "캠페인은 어떻게 이용하나요?",
            //         style: TextStyle(
            //           fontSize: 16.sp,
            //           color: Color(0xff333333),
            //           fontWeight: showdata ? FontWeight.w400 : FontWeight.w700,
            //           fontFamily: "Noto Sans KR",
            //         ),
            //       ),
            //     ),
            //     trailing: showdata
            //         ? Icon(
            //       Icons.keyboard_arrow_down_sharp,
            //       color: Color(0xffAAAAAA),
            //     )
            //         : Container(
            //       width: 1,
            //     )),
            // Divider(
            //   thickness: 1,
            //   height: 0,
            //   endIndent: 15,
            //   indent: 15,
            // ),
            !showdata
                ? Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20.sp, top: 18.sp),
                child: Text(
                  "캠페인 이용 방법",
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
                :
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 500,
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    InkWell(
                  onTap: () {
                              setState(() {
                                showdata = false;
                              });
                            },
                            child: ListTile(
                        title: Text(
                          "캠페인신청은 어떻게 하나요?",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff333333),
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
                ? Container()
                : Column(
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
                          showdata = true;
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
            ),
          ],
        ),
      ),
    );
  }
}
