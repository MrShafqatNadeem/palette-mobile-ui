import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/palette(influencer)/shipping_registration_Screen.dart';

class SelectShippingAdressScreen extends StatefulWidget {
  @override
  _SelectShippingAdressScreenState createState() =>
      _SelectShippingAdressScreenState();
}

class _SelectShippingAdressScreenState
    extends State<SelectShippingAdressScreen> {
  bool data = false;

  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "삭제 하시겠습니까?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.sp,
              color: Color(0xff666666),
              fontWeight: FontWeight.w400,
              fontFamily: "Noto Sans KR",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 100.sp,
                  height: 42.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffEB9FA3),
                      borderRadius: BorderRadius.circular(8.sp)),
                  child: Center(
                      child: Text(
                        "취소",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Noto Sans KR",
                        ),
                      )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    data = false;
                  });
                  Navigator.pop(context);
                },
                child: Container(
                  width: 100.sp,
                  height: 42.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffAAAAAA),
                      borderRadius: BorderRadius.circular(8.sp)),
                  child: Center(
                      child: Text(
                        "확인",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Noto Sans KR",
                        ),
                      )),
                ),
              ),
            ],
          )
        ],
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
          data? "배송지":
          "배송지 선택",
          style: TextStyle(
            color: Color(0xff333333),
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
            fontFamily: "Noto Sans KR",
          ),
        ),
        centerTitle: true,
        elevation: 1.5,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 31.5.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "배송지 목록",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans KR"),
              ),
              if (!data)
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          data = true;
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 131.5,
                          child: Center(
                            child: Text(
                              "등록된 배송지가 없습니다.",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xff333333),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Noto Sans KR"),
                            ),
                          )),
                    ),
                    Divider(
                      height: 0,
                      thickness: 1,
                      color: Color(0xffE1E1E1),
                    ),
                  ],
                )
              else
                Container(
                  padding: EdgeInsets.only(top: 5.5.sp),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) => Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 16.5.sp),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Address name",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: Color(0xff333333),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Noto Sans KR"),
                                        ),
                                        SizedBox(
                                          height: 7.sp,
                                        ),
                                        Text(
                                          "Name | 010-5616-4996",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff666666),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Noto Sans KR"),
                                        ),
                                        SizedBox(
                                          height: 7.sp,
                                        ),
                                        Text(
                                          "Address",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff666666),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Noto Sans KR"),
                                        ),
                                        SizedBox(
                                          height: 7.sp,
                                        ),
                                        Text(
                                          "Address detail",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff666666),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Noto Sans KR"),
                                        ),
                                        SizedBox(
                                          height: 16.5.sp,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 50.sp,
                                    ),
                                    Container(
                                      width: 75.sp,
                                      height: 40.sp,
                                      margin: EdgeInsets.only(bottom: 25.5.sp),
                                      decoration: BoxDecoration(
                                          color: Color(0xffF9F8F8),
                                          border: Border.all(
                                              color: Color(0xffD1D0D0)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3))),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                                    return ShippingRegistrationScreen();
                                                  }));
                                        },
                                        child: Center(
                                            child: Text("변경",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff000000),
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Noto Sans KR"))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width*0.01
                                    ),
                                    Container(
                                      width: 75.sp,
                                      height: 40.sp,
                                      margin: EdgeInsets.only(bottom: 25.5.sp),
                                      decoration: BoxDecoration(
                                          color: Color(0xffF9F8F8),
                                          border: Border.all(
                                              color: Color(0xffD1D0D0)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3))),
                                      child: InkWell(
                                        onTap: () {
                                          showAlertDialog(context);
                                        },
                                        child: Center(
                                            child: Text("삭제",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff000000),
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:
                                                        "Noto Sans KR"))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 0,
                                thickness: 1,
                                color: Color(0xffE1E1E1),
                              ),
                            ],
                          )),
                ),
              SizedBox(
                height: 20.5.sp,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return ShippingRegistrationScreen();
                      }));
                },
                child: Container(
                  height: 52.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffAAAAAA),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Center(
                      child: Text("배송지 추가",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Noto Sans KR"))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
