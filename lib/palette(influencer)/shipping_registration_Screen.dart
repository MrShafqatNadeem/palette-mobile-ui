import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette/widgets/bottom_Bar.dart';
import 'package:palette/widgets/custom_text.dart';
import 'package:palette/widgets/custom_textfield.dart';
import 'package:simple_tooltip/simple_tooltip.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingRegistrationScreen extends StatefulWidget {
  @override
  _ShippingRegistrationScreenState createState() =>
      _ShippingRegistrationScreenState();
}

class _ShippingRegistrationScreenState
    extends State<ShippingRegistrationScreen> {
  String SAddress = '';
  String Recipient = '';
  String Contact = '';
  String Address = '';
  String Empty1 = '';
  String Empty2 = '';

  FocusNode Saddress;
  FocusNode recipient;
  FocusNode contact;
  FocusNode address;
  FocusNode empty1;
  FocusNode empty2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Saddress = FocusNode();
    recipient = FocusNode();
    contact = FocusNode();
    address = FocusNode();
    empty1 = FocusNode();
    empty2 = FocusNode();
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
          "배송지 등록",
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 31.5.sp, right: 20.sp, left: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(context: context, text: "배송지명"),
              CustomTextField(
                context: context,
                focusNode: Saddress,
                onchange: (value) {
                  SAddress = value;
                },
              ),
              SizedBox(
                height: 21.sp,
              ),
              CustomText(context: context, text: "수령인"),
              CustomTextField(
                context: context,
                focusNode: recipient,
                onchange: (value) {
                  Recipient = value;
                },
              ),
              SizedBox(
                height: 21.sp,
              ),
              CustomText(context: context, text: "연락처"),
              CustomTextField(
                context: context,
                focusNode: contact,
                onchange: (value) {
                  Contact = value;
                },
              ),
              SizedBox(
                height: 21.sp,
              ),
              CustomText(context: context, text: "주소"),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 57.sp,
                child: Row(
                  children: [
                    Container(
                      width: 260.sp,
                      child: CustomTextField(
                        context: context,
                        focusNode: address,
                        onchange: (value) {
                          Address = value;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 11.sp),
                      width: 87.sp,
                      height: 46.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffF9F8F8),
                          border: Border.all(color: Color(0xffDDDDDD)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: Text(
                          "주소 찾기",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Noto Sans KR"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextField(
                context: context,
                focusNode: empty1,
                onchange: (value) {
                  Empty1 = value;
                },
              ),
              CustomTextField(
                context: context,
                focusNode: empty2,
                onchange: (value) {
                  Empty2 = value;
                },
              ),
              SizedBox(
                height: 126.sp,
              ),
              InkWell(
                onTap: () {
                  if (SAddress == '') {
                    Saddress.requestFocus();
                  } else if (Recipient == '') {
                    recipient.requestFocus();
                  } else if (Contact == '') {
                    contact.requestFocus();
                  } else if (Address == '') {
                    address.requestFocus();
                  } else if (Empty1 == '') {
                    empty1.requestFocus();
                  } else if (Empty2 == '') {
                    empty2.requestFocus();
                  }
                },
                child: Container(
                  height: 52.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffEA9FA3),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Center(
                      child: Text("등록",
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
