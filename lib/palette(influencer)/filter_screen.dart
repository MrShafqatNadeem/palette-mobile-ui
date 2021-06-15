import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool selectsns1 = true;
  bool selectsns2 = false;

  bool selectsort1 = true;
  bool selectsort2 = false;
  bool selectsort3 = false;
  // one dialog
  // showAlertDialog(BuildContext context) {
  //   AlertDialog alert = AlertDialog(
  //     content: Text(
  //       "탈퇴 하시겠습니까?",
  //       textAlign: TextAlign.center,
  //       style: TextStyle(
  //         fontSize: 15.sp,
  //         color: Color(0xff666666),
  //         fontWeight: FontWeight.w400,
  //         fontFamily: "Noto Sans KR",
  //       ),
  //     ),
  //     actionsPadding: EdgeInsets.only(right: 50.sp, bottom: 20),
  //     actions: [
  //       InkWell(
  //         onTap: () {
  //           Navigator.pop(context);
  //         },
  //         child: Container(
  //           width: 100.sp,
  //           height: 42.sp,
  //           decoration: BoxDecoration(
  //               color: Color(0xffEB9FA3),
  //               borderRadius: BorderRadius.circular(8.sp)),
  //           child: Center(
  //               child: Text(
  //                 "취소",
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 14.sp,
  //                   fontWeight: FontWeight.w500,
  //                   fontFamily: "Noto Sans KR",
  //                 ),
  //               )),
  //         ),
  //       ),
  //       InkWell(
  //         onTap: () {
  //           Navigator.pop(context);
  //         },
  //         child: Container(
  //           width: 100.sp,
  //           height: 42.sp,
  //           decoration: BoxDecoration(
  //               color: Color(0xffAAAAAA),
  //               borderRadius: BorderRadius.circular(8.sp)),
  //           child: Center(
  //               child: Text(
  //                 "탈퇴",
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 14.sp,
  //                   fontWeight: FontWeight.w500,
  //                   fontFamily: "Noto Sans KR",
  //                 ),
  //               )),
  //         ),
  //       ),
  //     ],
  //   );
  //
  //   // show the dialog
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }

  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      titlePadding: EdgeInsets.all(0),
      title: Container(
        height: 40,
        color: Color(0xffEB9FA3),
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            "설정",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: "Noto Sans KR",
            ),
          ),
        ),
      ),
      content: Text(
        "캠페인 신청 취소",
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 16.sp,
          color: Color(0xff666666),
          fontWeight: FontWeight.w400,
          fontFamily: "Noto Sans KR",
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
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
        leading: Container(),
        title: Text(
          "필터",
          style: TextStyle(
            color: Color(0xff333333),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            fontFamily: "Noto Sans KR",
          ),
        ),
        centerTitle: true,
        elevation: 1.5,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 13.0),
              child: Icon(
                Icons.close,
                color: Color(0xff757575),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 31.5.sp, right: 20.sp, left: 20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SNS",
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Noto Sans KR",
              ),
            ),
            SizedBox(
              height: 11.sp,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectsns1 = !selectsns1;
                    });
                  },
                  child: Container(
                    height: 34.sp,
                    width: 65.sp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: selectsns1
                                ? Color(0xffE95252)
                                : Color(0xffAAAAAA)),
                        borderRadius: BorderRadius.all(Radius.circular(30.sp))),
                    child: Center(
                        child: Text("블로그",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: selectsns1
                                    ? Color(0xffE95252)
                                    : Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Noto Sans KR"))),
                  ),
                ),
                SizedBox(
                  width: 10.sp,
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      selectsns2 = !selectsns2;
                    });
                  },
                  child: Container(
                    height: 34.sp,
                    width: 88.sp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:  selectsns2
                            ? Color(0xffE95252)
                            :Color(0xffAAAAAA)),
                        borderRadius: BorderRadius.all(Radius.circular(30.sp))),
                    child: Center(
                        child: Text("블로그",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color:  selectsns2
                                    ? Color(0xffE95252)
                                    :Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Noto Sans KR"))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 21.sp,
            ),
            Text(
              "정렬",
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Noto Sans KR",
              ),
            ),
            SizedBox(
              height: 11.sp,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectsort1 = true;
                      selectsort2 = false;
                      selectsort3 = false;
                    });
                  },
                  child: Container(
                    height: 34.sp,
                    width: 65.sp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: selectsort1
                                ? Color(0xffE95252)
                                : Color(0xffAAAAAA)),
                        borderRadius: BorderRadius.all(Radius.circular(30.sp))),
                    child: Center(
                        child: Text("최신순",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: selectsort1
                                    ? Color(0xffE95252)
                                    : Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Noto Sans KR"))),
                  ),
                ),
                SizedBox(
                  width: 10.sp,
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      selectsort1 = false;
                      selectsort2 = true;
                      selectsort3 = false;
                    });
                  },
                  child: Container(
                    height: 34.sp,
                    width: 88.sp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:  selectsort2
                            ? Color(0xffE95252)
                            :Color(0xffAAAAAA)),
                        borderRadius: BorderRadius.all(Radius.circular(30.sp))),
                    child: Center(
                        child: Text("마감임박순",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color:  selectsort2
                                    ? Color(0xffE95252)
                                    :Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Noto Sans KR"))),
                  ),
                ),
                SizedBox(
                  width: 10.sp,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectsort1 = false;
                      selectsort2 = false;
                      selectsort3 = true;
                    });
                  },
                  child: Container(
                    height: 34.sp,
                    width: 65.sp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: selectsort3
                                ? Color(0xffE95252)
                                : Color(0xffAAAAAA)),
                        borderRadius: BorderRadius.all(Radius.circular(30.sp))),
                    child: Center(
                        child: Text("인기순",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: selectsort3
                                    ? Color(0xffE95252)
                                    : Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Noto Sans KR"))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
