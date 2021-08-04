import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:palette/Screens/privacy_Screen.dart';
import 'package:palette/Screens/show_image_screen.dart';
import 'package:palette/Screens/terms_conditions_Screen.dart';
import 'dart:io';
import 'package:palette/widgets/bottom_Bar.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpostal/kpostal.dart';
import 'package:photo_view/photo_view.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  DateTime _dateTime = DateTime.now();
  DateTime _dateTimecheck = DateTime.now();
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
  String detailadress = '';

  String date = '';
  String message = "";
  bool showImage = false;
  var myFormat = DateFormat('yyyy-MM-dd');
  TextEditingController controller;
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            style: TextStyle(
                color: Color(0xff666666),
                fontSize: 14,
                fontFamily: " Noto Sans KR",
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 15,
          ),
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

  Future _cropImage(filePath) async {
    File croppedImage = await ImageCropper.cropImage(
        sourcePath: filePath,
        maxWidth: 1080,
        maxHeight: 1080,
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0));
    if (croppedImage != null) {
      print("in cropper");
      _image = croppedImage;
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
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0));
    if (croppedImage != null) {
      print("in cropper");
      _image2 = croppedImage;
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
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0));
    if (croppedImage != null) {
      print("in cropper");
      _image3 = croppedImage;
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
    print(_dateTime);
    nameNode = FocusNode();
    addressNode = FocusNode();
    dateNode = FocusNode();
    controller = TextEditingController();
    controller.addListener(() {
      setState(() {});
    });
  }

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
                height: 7.sp,
              ),
              Text(
                "오프라인(방문형매장) 서비스를 이용하시는 대표자님은 매장 및 사업장 주소는 상세주소까지 정확하게 입력해주세요.",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              Theme(
                data: new ThemeData(
                  primaryColor: Color(0xffEA9FA3),
                  primaryColorDark: Color(0xffDDDDDD),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 11.sp),
                  height: 50,
                  child: TextFormField(
                    enabled: false,
                    decoration: new InputDecoration(
                      fillColor: Color(0xffDDDDDD),
                      filled: true,
                      hintText: address,
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
              Theme(
                data: new ThemeData(
                  primaryColor: Color(0xffEA9FA3),
                  primaryColorDark: Color(0xffDDDDDD),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 5.sp),
                  height: 50,
                  child: TextFormField(
                    focusNode: addressNode,
                    onChanged: (v) {
                      detailadress = v;
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
              InkWell(
                onTap: () async {
                  Kpostal result = await Navigator.push(context,
                      MaterialPageRoute(builder: (_) => KpostalView()));

                  if (result.address != null) {
                    setState(() {
                      address = result.address;
                      print(address.toString());
                    });
                  }
                },
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 5.sp),
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
              ),
              SizedBox(
                height: 5,
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
                    controller: controller,
                    readOnly: true,
                    focusNode: dateNode,
                    onTap: () async {
                      final DateTime picked = await showDatePicker(
                        context: context,
                        initialDate: _dateTime,
                        firstDate: DateTime(2010),
                        lastDate: DateTime(2024),
                        initialDatePickerMode: DatePickerMode.day,
                        //locale : const Locale('kr')
                      );
                      if (picked != null && picked != _dateTime)
                        setState(() {
                          _dateTime = picked;
                          debugPrint("_selectDate");
                          debugPrint(_dateTime.toString());
                          controller.text =  myFormat.format(_dateTime);
                        });
                    },
                    decoration: new InputDecoration(
                      hintText: myFormat.format(_dateTime),
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
                      : Column(
                          children: [
                            _image4 == null
                                ? Container()
                                : Image.file(
                                    File(_image4.path),
                                    fit: BoxFit.fill,
                                    width: 100,
                                    height: 90,
                                  ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return ShowImageScreen(
                                        image: _image4,
                                      );
                                    }));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xffF9F8F8),
                                        border: Border.all(
                                          color: Color(0xffE1E1E1),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xffEA9FA3),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
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
                            ),
                          ],
                        )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color(0xffE1E1E1),
                thickness: 1,
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
                    child: Text(
                      "전체 약관 동의",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                    ),
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 ? checkbox2 = true : checkbox2 = !checkbox2;
                      });
                    },
                    child: Text(
                      "서비스 이용약관 동의(필수)",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return TermsConditionScreen();
                      }));
                    },
                    child: Text(
                      "상세",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                    ),
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 ? checkbox3 = true : checkbox3 = !checkbox3;
                      });
                    },
                    child: Text(
                      "개인정보 수집 및 이용에 동의(필수)",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PrivacyScreen();
                      }));
                    },
                    child: Text(
                      "상세",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                    ),
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 ? checkbox4 = true : checkbox4 = !checkbox4;
                      });
                    },
                    child: Text(
                      "서비스 모집 및 추천 설문조사, 이벤트 정보등의 \n 이메일 수신에 동의(선택)",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  if (name == '' || name.length < 2 || name.length > 16) {
                    nameNode.requestFocus();
                    setState(() {
                      message = "매장명을 입력해주세요";
                      showAlertDialog(context);
                    });
                  }
                  // else if (address == '') {
                  //   setState(() {
                  //     message = "주소를 입력해주세요";
                  //     showAlertDialog(context);
                  //   });
                  //   addressNode.requestFocus();
                  // }
                  else if (detailadress == '') {
                    addressNode.requestFocus();
                    setState(() {
                      message = "주소를 입력해주세요";
                      showAlertDialog(context);
                    });
                  } else if (_dateTime.day == _dateTimecheck.day) {
                    setState(() {
                      message = "개업일을 입력해주세요";
                      showAlertDialog(context);
                    });
                    dateNode.requestFocus();
                  } else if (_image == null) {
                    setState(() {
                      message = "대표 이미지를 등록해주세요";
                      showAlertDialog(context);
                    });
                  } else if (_image4 == null) {
                    setState(() {
                      message = "사업자등록증을 등록해주세요";
                      showAlertDialog(context);
                    });
                  } else if (!checkbox2 || !checkbox3) {
                    setState(() {
                      message = "서비스 이용약관과 개인정보 수집및 이용에 동의해주세요.";
                      showAlertDialog(context);
                    });
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return UserHome();
                    }));
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
