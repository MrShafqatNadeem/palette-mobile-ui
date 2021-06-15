import 'package:flutter/material.dart';
import 'dart:io';

class ChangeInformationScreen extends StatefulWidget {
  @override
  _ChangeInformationScreenState createState() =>
      _ChangeInformationScreenState();
}

class _ChangeInformationScreenState extends State<ChangeInformationScreen> {
  File _image4;
  bool image = true;

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
          "정보입력",
          style: TextStyle(
            color: Color(0xff333333),
            fontWeight: FontWeight.bold,
            fontFamily: "Noto Sans KR",
          ),
        ),
        centerTitle: true,
        elevation: 1.5,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "매장 or 서비스 상호명",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans KR"),
              ),
              Theme(
                data: new ThemeData(
                  primaryColor: Color(0xffEA9FA3),
                  primaryColorDark: Color(0xffDDDDDD),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 50,
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "팔레트",
                      //   fillColor: Colors.white,
                      hintStyle: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        // borderSide: new BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "Email cannot be empty";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "매장 or 사업장 주소",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "오프라인(방문형매장) 서비스를 이용하시는 대표자님은 매장 및 사업장 주소는 상세주소까지 정확하게 입력해주세요.",
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w300,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Color(0xffF9F8F8),
                    border: Border.all(
                      color: Color(0xffE1E1E1),
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  "대전광역시 서구 둔산동 1234",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Noto Sans KR"),
                )),
              ),
              Theme(
                data: new ThemeData(
                  primaryColor: Color(0xffEA9FA3),
                  primaryColorDark: Color(0xffDDDDDD),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 50,
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "1층 팔레트",
                      //   fillColor: Colors.white,
                      hintStyle: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        // borderSide: new BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffAAAAAA),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                  "주소 검색",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Noto Sans KR"),
                )),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "사업개시일",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans KR"),
              ),
              Theme(
                data: new ThemeData(
                  primaryColor: Color(0xffEA9FA3),
                  primaryColorDark: Color(0xffDDDDDD),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 50,
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "2020-01-01",
                      //   fillColor: Colors.white,
                      hintStyle: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        // borderSide: new BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "서비스 대표이미지 등록",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Color(0xffF9F8F8),
                          borderRadius: BorderRadius.circular(5)),
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "assets/images/test.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black54.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "대표이미지 변경",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: 100,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Color(0xffF9F8F8),
                          borderRadius: BorderRadius.circular(5)),
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "assets/images/test.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black54.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "대표이미지 변경",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    width: 100,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Color(0xffF9F8F8),
                        border: Border.all(
                          color: Color(0xffAAAAAA),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Color(0xffAAAAAA),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "사업자등록증 등록",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "팔레트 서비스 이용을 위해서는 사업자등록증이 반드시 필요합니다. 서비스에 기입된 정보에 맞는 사업자등록증을 등록해주세요.",
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w300,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "- 사업자등록증",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                  !image
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              image = true;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffF9F8F8),
                                border: Border.all(
                                  color: Color(0xffE1E1E1),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Center(
                                child: Text("파일 선택하기",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff666666),
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Noto Sans KR"))),
                          ),
                        )
                      : Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffF9F8F8),
                                  border: Border.all(
                                    color: Color(0xffE1E1E1),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Center(
                                  child: Text(
                                "파일보기",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff666666),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                              )),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  image = false;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xffF9F8F8),
                                    border: Border.all(
                                      color: Color(0xffE1E1E1),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Center(
                                    child: Text(
                                  "삭제하기",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff666666),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Noto Sans KR"),
                                )),
                              ),
                            )
                          ],
                        )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "휴대폰번호",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans KR"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Theme(
                    data: new ThemeData(
                      primaryColor: Color(0xffEA9FA3),
                      primaryColorDark: Color(0xffDDDDDD),
                    ),
                    child: Container(
                      width: 202,
                      margin: EdgeInsets.only(top: 5),
                      height: 50,
                      child: TextFormField(
                        decoration: new InputDecoration(
                          hintText: "010-1234-5667",
                          //   fillColor: Colors.white,
                          hintStyle: TextStyle(
                              color: Color(0xffAAAAAA),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            // borderSide: new BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffAAAAAA),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Text(
                      "휴대폰번호변경",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  //
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) {
                  //       return UserHome();
                  //     }));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffEA9FA3),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: Text("수정완료",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w300,
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
