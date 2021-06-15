import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:palette/widgets/bottom_Bar.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  DateTime _dateTime = DateTime.now();
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
  bool checkbox4 = false;
  File _image;
  File _image2;
  File _image3;
  File _image4;
  String name = '';
  String address = '';
  String date = '';
  String message = "";

  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Text(
        message,
        style: TextStyle(
            color: Color(0xff666666),
            fontSize: 15,
            fontFamily: " Noto Sans KR",
            fontWeight: FontWeight.w300),
      ),
      actionsPadding: EdgeInsets.only(right: 100, bottom: 20),
      actions: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Container(
              width: 70,
              height: 30,
              decoration: BoxDecoration(
                  color: Color(0xffEB9FA3),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  "Ok",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  Future _cropImage(filePath) async {
    File croppedImage = await ImageCropper.cropImage(
        sourcePath: filePath,
        maxWidth: 1080,
        maxHeight: 1080,
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0)
    );
    if (croppedImage  != null) {
      print("in cropper");
      _image = croppedImage ;
      setState(() {});
    }
  }
  Future getImage1() async {
    try {
      FilePickerResult result = await FilePicker.platform.pickFiles(
          type: FileType.custom, allowedExtensions: ['jpg', 'png', 'jpeg']);
      if (result != null) {
        _cropImage(result.files.single.path);
     //   _image = File(result.files.single.path);
        setState(() {});
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print("in cahtchcccccccccccc");
      print(e.toString());
    }
  }
  Future _cropImage2(filePath) async {
    File croppedImage = await ImageCropper.cropImage(
        sourcePath: filePath,
        maxWidth: 1080,
        maxHeight: 1080,
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0)
    );
    if (croppedImage  != null) {
      print("in cropper");
      _image2 = croppedImage ;
      setState(() {});
    }
  }
  Future getImage2() async {
    try {
      FilePickerResult result = await FilePicker.platform.pickFiles(
          type: FileType.custom, allowedExtensions: ['jpg', 'png', 'jpeg']);
      if (result != null) {
        _cropImage2(result.files.single.path);
       // _image2 = File(result.files.single.path);

        setState(() {});
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print("in cahtchcccccccccccc");
      print(e.toString());
    }
  }
  Future _cropImage3(filePath) async {
    File croppedImage = await ImageCropper.cropImage(
        sourcePath: filePath,
        maxWidth: 1080,
        maxHeight: 1080,
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0)
    );
    if (croppedImage  != null) {
      print("in cropper");
      _image3 = croppedImage ;
      setState(() {});
    }
  }
  Future getImage3() async {
    try {
      FilePickerResult result = await FilePicker.platform.pickFiles(
          type: FileType.custom, allowedExtensions: ['jpg', 'png', 'jpeg']);
      if (result != null) {
        _cropImage3(result.files.single.path);
       // _image3 = File(result.files.single.path);

        setState(() {});
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print("in cahtchcccccccccccc");
      print(e.toString());
    }
  }

  Future getImage4() async {
    try {
      FilePickerResult result = await FilePicker.platform.pickFiles(
          type: FileType.custom, allowedExtensions: ['jpg', 'png', 'jpeg']);
      if (result != null) {
        _image4 = File(result.files.single.path);

        setState(() {});
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print("in cahtchcccccccccccc");
      print(e.toString());
    }
  }

  FocusNode nameNode;
  FocusNode addressNode;
  FocusNode dateNode;

  @override
  void initState() {
    super.initState();

    nameNode = FocusNode();
    addressNode = FocusNode();
    dateNode = FocusNode();
  }

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
                "매장 or 서비스명",
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
                    focusNode: nameNode,
                    onChanged: (v) {
                      name = v;
                    },
                    decoration: new InputDecoration(
                      hintText: "서비스 또는 가게의 이름을 적어주세요.",
                      hintStyle: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                      border: new OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0.0),
                      ),
                      enabledBorder: new OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffAAAAAA),
                    borderRadius: BorderRadius.all(Radius.circular(3))),
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
                height: 5,
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
                    focusNode: addressNode,
                    onChanged: (v) {
                     address = v;
                    },
                    decoration: new InputDecoration(
                      hintText: "상세주소",
                      //   fillColor: Colors.white,
                      hintStyle: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                      border: new OutlineInputBorder(
                          // borderSide: new BorderSide(),
                          ),
                      enabledBorder: new OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "개업일(사업자등록기준)",
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
                    focusNode: dateNode,
                    onChanged: (v) {
                      date = v;
                    },
                    decoration: new InputDecoration(
                      hintText: '1990-01-01',
                      //   fillColor: Colors.white,
                      hintStyle: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                      border: new OutlineInputBorder(),
                      enabledBorder: new OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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
                  InkWell(
                    onTap: () {
                      getImage1();
                    },
                    child: Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Color(0xffF9F8F8),
                            border: Border.all(
                              color: Color(0xffEA9FA3),
                            ),
                            borderRadius: BorderRadius.circular(3)),
                        child: _image == null
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.image,
                                    color: Color(0xffEA9FA3),
                                    size: 45,
                                  ),
                                  Text(
                                    "대표이미지 등록",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xffE95252),
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Noto Sans KR"),
                                  ),
                                ],
                              )
                            : Stack(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 90,
                                    child: Image.file(
                                      _image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "대표이미지 변경",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Noto Sans KR"),
                                    ),
                                  ),
                                ],
                              )),
                  ),
                  InkWell(
                    onTap: () {
                      getImage2();
                    },
                    child: Container(
                      width: 100,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Color(0xffF9F8F8),
                          border: Border.all(
                            color: Color(0xffAAAAAA),
                          ),
                          borderRadius: BorderRadius.circular(3)),
                      child: _image2 == null
                          ? Center(
                              child: Icon(
                                Icons.add,
                                color: Color(0xffAAAAAA),
                              ),
                            )
                          : Image.file(
                              _image2,
                              fit: BoxFit.fill,
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      getImage3();
                    },
                    child: Container(
                      width: 100,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Color(0xffF9F8F8),
                          border: Border.all(
                            color: Color(0xffAAAAAA),
                          ),
                          borderRadius: BorderRadius.circular(3)),
                      child: _image3 == null
                          ? Center(
                              child: Icon(
                                Icons.add,
                                color: Color(0xffAAAAAA),
                              ),
                            )
                          : Image.file(
                              _image3,
                              fit: BoxFit.fill,
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _image4 == null
                      ? InkWell(
                          onTap: () {
                            getImage4();
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffEA9FA3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            child: Center(
                                child: Text(
                              "파일 선택하기",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            )),
                          ))
                      : Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffF9F8F8),
                                  border: Border.all(
                                    color: Color(0xffE1E1E1),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3))),
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
                                  _image4 = null;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xffEA9FA3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3))),
                                child: Center(
                                    child: Text(
                                  "삭제하기",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
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
                height: 10,
              ),
              Divider(
                color: Color(0xffE1E1E1),
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 = !checkbox1;
                        checkbox2 && checkbox1
                            ? checkbox2 = true
                            : checkbox2 = !checkbox2;
                        checkbox3 && checkbox1
                            ? checkbox3 = true
                            : checkbox3 = !checkbox3;
                        checkbox4 && checkbox1
                            ? checkbox4 = true
                            : checkbox4 = !checkbox4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: checkbox1 ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: checkbox1
                              ? Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "전체 약관 동의",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 ? checkbox2 = true : checkbox2 = !checkbox2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: checkbox2 ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: checkbox2
                              ? Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "서비스 이용약관 동의(필수)",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                  SizedBox(
                    width: 123,
                  ),
                  Text(
                    "상세",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 ? checkbox3 = true : checkbox3 = !checkbox3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: checkbox3 ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: checkbox3
                              ? Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "개인정보 수집 및 이용에 동의(필수)",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    "상세",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 ? checkbox4 = true : checkbox4 = !checkbox4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: checkbox4 ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: checkbox4
                              ? Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "서비스 모집 및 추천 설문조사, 이벤트 정보등의 \n 이메일 수신에 동의(선택)",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  if (checkbox2 && checkbox3) {
                    if (name == '') {
                      nameNode.requestFocus();
                    }  else if (address == '') {
                      addressNode.requestFocus();
                    }
                    else if (date == '') {
                      dateNode.requestFocus();
                    }
                    else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UserHome();
                      }));
                    }
                  } else {
                    setState(() {
                      message = "서비스 및 개인정보 이용약관에 동의하세요";
                      showAlertDialog(context);
                    });
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffEA9FA3),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Center(
                      child: Text("가입완료",
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
