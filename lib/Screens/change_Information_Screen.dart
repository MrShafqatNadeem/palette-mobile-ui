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

class ChangeInformationScreen extends StatefulWidget {
  @override
  _ChangeInformationScreenState createState() => _ChangeInformationScreenState();
}

class _ChangeInformationScreenState extends State<ChangeInformationScreen> {
  DateTime _dateTime = DateTime.now();
  DateTime _dateTimecheck= DateTime.now();

  File _image;
  File _image2;
  File _image3;
  File _image4;
  String name = '';
  String address = '대전광역시 서구 둔산동 1234';
  String detailadress = '';

  String message = "";
  bool showImage = false;
  var myFormat = DateFormat('yyyy-MM-dd');
  TextEditingController controller;
  TextEditingController controller1;
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
          "정보 수정",
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
                      hintText: "1층 팔레트",
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
                      height: 50,
                      child: TextFormField(
                        controller: controller1,
                        decoration: new InputDecoration(
                          hintText: "010-1234-5667",
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
                          //fillColor: Colors.green
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 50,

                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffAAAAAA)),
                        color: Color(0xffAAAAAA),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
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
                  }
                  else {
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
