import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:palette/widgets/bottom_Bar.dart';
import 'package:simple_tooltip/simple_tooltip.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'load_campaign_Screen.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisteringcampaignScreen extends StatefulWidget {
  bool change = false;

  RegisteringcampaignScreen({this.change});

  @override
  _RegisteringcampaignScreenState createState() =>
      _RegisteringcampaignScreenState();
}

class _RegisteringcampaignScreenState extends State<RegisteringcampaignScreen> {
  String titleValidate = '';
  String desValidate = '';
  String recruitmentValidate = '';
  String amountValidate = '';

  bool informationValidate = false;
  bool detailsValidate = false;
  bool missionValidate = false;
  bool keywordValidate = false;
  bool historyValidate = false;
  bool text1alert = false;
  bool text2alert = false;
  bool changebtn1 = false;
  bool changebtn2 = false;
  bool changebtn3 = false;
  bool changebtn4 = false;
  bool showbtn1data = false;
  bool showbtn2data = false;
  bool showbtn3data = false;
  bool showbtn4data = false;
  bool imagepic1 = false;
  bool changeboder1 = false;
  bool changeboder2 = false;
  bool changeboder3 = false;
  bool changeboder4 = false;
  List<String> blogTags = [];
  List<String> blogTags2 = [];
  List<String> intagramTags = [];
  List<String> intagramTags2 = [];
  File _image;
  File _image2;
  DateTime _dateTime = DateTime.now();
  DateTime _dateTime1 = DateTime.now();
  var myFormat = DateFormat('yyyy-MM-dd');
  var maskFormatter = new MaskTextInputFormatter(mask: '#,###,###,###');
  String message = "";
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

  Future getImage() async {
    try {
      FilePickerResult result = await FilePicker.platform.pickFiles(
          type: FileType.custom, allowedExtensions: ['jpg', 'png', 'jpeg']);
      if (result != null) {
        _cropImage(result.files.single.path);
        setState(() {});
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print("in cahtchcccccccccccc");
      print(e.toString());
    }
  }

  Future _cropImage(filePath) async {
    File croppedImage = await ImageCropper.cropImage(
        sourcePath: filePath,
        maxWidth: 1080,
        maxHeight: 1080,
        aspectRatio: CropAspectRatio(ratioX: 1.5, ratioY: 1.0));
    if (croppedImage != null) {
      print("in cropper");
      imagepic1 ? _image = croppedImage : _image2 = croppedImage;
      setState(() {});
    }
  }

  FocusNode title;
  FocusNode des;
  FocusNode recruitment;
  FocusNode amount;
  FocusNode date;
  FocusNode buttononedata;
  FocusNode button3data1;
  FocusNode button3data2;
  FocusNode button4data1;
  FocusNode button4data2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = FocusNode();
    des = FocusNode();
    recruitment = FocusNode();
    amount = FocusNode();
    date = FocusNode();
    buttononedata = FocusNode();
    button3data1 = FocusNode();
    button3data2 = FocusNode();
    button4data1 = FocusNode();
    button4data2 = FocusNode();
    controller = TextEditingController();
    controller.addListener(() {
      setState(() {});
    });
    controller1 = TextEditingController();
    controller1.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          widget.change ? "캠페인 수정하기" : "캠페인 등록하기",
          style: TextStyle(
            color: Color(0xff333333),
            fontWeight: FontWeight.bold,
            fontFamily: "Noto Sans KR",
          ),
        ),
        centerTitle: true,
        elevation: 1.5,
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                changebtn1 = false;
                changebtn2 = false;
                changebtn3 = false;
                changebtn4 = false;
                showbtn1data = false;
                showbtn2data = false;
                showbtn3data = false;
                showbtn4data = false;
              });
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
          padding: EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: widget.change
                      ? Center()
                      : InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoadCompaignScreen(
                                title: titleValidate,
                                subtitle: desValidate,
                                recnumber: recruitmentValidate,
                              );
                            }));
                          },
                          child: Text(
                            "캠페인 내용 불러오기",
                            style: TextStyle(
                              color: Color(0xff888888),
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                              fontFamily: "Noto Sans KR",
                              decoration: TextDecoration.underline,
                              decorationThickness: 1,
                              decorationColor: Color(0xff888888),
                            ),
                            textAlign: TextAlign.end,
                          ),
                        )),
              SizedBox(
                height: 10,
              ),
              Text(
                "캠페인 제목",
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
                    focusNode: title,
                    onChanged: (v) {
                      titleValidate = v;
                    },
                    decoration: new InputDecoration(
                      hintText: "제목을 입력해주세요.",
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
              SizedBox(
                height: 30,
              ),
              Text(
                "캠페인 설명",
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
                    focusNode: des,
                    onChanged: (v) {
                      desValidate = v;
                    },
                    decoration: new InputDecoration(
                      hintText: "설명을 간략하게 입력해주세요.(최대 30자).",
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
              Row(
                children: [
                  Text(
                    "신청 기간",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Noto Sans KR"),
                  ),
                  SimpleTooltip(
                    tooltipTap: () {
                      setState(() {
                        text1alert = false;
                      });
                    },
                    animationDuration: Duration(seconds: 1),
                    show: text1alert,
                    tooltipDirection: TooltipDirection.down,
                    borderColor: Colors.white,
                    maxWidth: 180,
                    minWidth: 50,
                    maxHeight: 200,
                    arrowTipDistance: 0,
                    ballonPadding: EdgeInsets.all(2),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          text1alert = !text1alert;
                        });
                        print("fkdj...........................");
                      },
                      child: Icon(
                        Icons.error_outline,
                        color: Color(0xffCFCFCF),
                        size: 20,
                      ),
                    ),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "캠페인 제목",
                          style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.none,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xffE1E1E1),
                        ),
                        Text(
                          "서비스 신청기간은 인플루언서들의 서비스 신청기간을 지정 하는 것으로, 최대 2주일 까지 선택가능합니다. ※ 서비스 신청기간에 따라 인플루언서 발표일,서비스 이용 기간, 미션 등록기간이 자동으로 설정됩니다. ※ 인플루언서 발표일 : 신청기간 + 1일 ※ 서비스 이용기간 : 인플루언서 발표일 + 1일 부터 2주일 ※ 미션 등록기간 : 서비스 이용기간 +1일 부터 2주일",
                          style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.none,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Theme(
                    data: new ThemeData(
                      primaryColor: Color(0xffEA9FA3),
                      primaryColorDark: Color(0xffDDDDDD),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextFormField(
                        controller: controller,
                        focusNode: date,
                        readOnly: true,
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
                              controller.text = myFormat.format(_dateTime);
                            });
                        },
                        decoration: new InputDecoration(
                          //   fillColor: Colors.white,
                          hintText: myFormat.format(_dateTime),
                          hintStyle: TextStyle(
                              color: Color(0xffAAAAAA),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                          border: new OutlineInputBorder(),
                          enabledBorder: new OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "~",
                        style:
                            TextStyle(color: Color(0xffDDDDDD), fontSize: 25),
                      ),
                    ),
                  ),
                  Theme(
                    data: new ThemeData(
                      primaryColor: Color(0xffEA9FA3),
                      primaryColorDark: Color(0xffDDDDDD),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextFormField(
                        controller: controller1,
                        focusNode: date,
                        readOnly: true,
                        onTap: () async {
                          final DateTime picked = await showDatePicker(
                            context: context,
                            initialDate: _dateTime1,
                            firstDate: DateTime(2010, 8),
                            lastDate: DateTime(2101),
                            initialDatePickerMode: DatePickerMode.day,
                            //locale : const Locale('kr')
                          );
                          if (picked != null && picked != _dateTime1)
                            setState(() {
                              _dateTime1 = picked;
                              debugPrint("_selectDate");
                              debugPrint(_dateTime1.toString());
                              controller1.text = myFormat.format(_dateTime1);
                            });
                        },
                        decoration: new InputDecoration(
                          //   fillColor: Colors.white,
                          hintText: myFormat.format(_dateTime1),
                          hintStyle: TextStyle(
                              color: Color(0xffAAAAAA),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                          border: new OutlineInputBorder(),
                          enabledBorder: new OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "모집 인원",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Noto Sans KR"),
                  ),
                  SimpleTooltip(
                    tooltipTap: () {
                      setState(() {
                        text2alert = false;
                      });
                    },
                    animationDuration: Duration(seconds: 1),
                    show: text2alert,
                    tooltipDirection: TooltipDirection.down,
                    borderColor: Colors.white,
                    maxWidth: 150,
                    maxHeight: 100,
                    arrowTipDistance: 0,
                    ballonPadding: EdgeInsets.all(2),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          text2alert = !text2alert;
                        });
                      },
                      child: Icon(
                        Icons.error_outline,
                        color: Color(0xffCFCFCF),
                        size: 20,
                      ),
                    ),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "서비스 이용인원?",
                          style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.none,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xffE1E1E1),
                        ),
                        Text(
                          "서비스 이용인원은 최소 5명 이상 입력 가능합니다.",
                          style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.none,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                      ],
                    ),
                  ),
                ],
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
                    keyboardType: TextInputType.number,
                    focusNode: recruitment,
                    onChanged: (v) {
                      recruitmentValidate = v;
                    },
                    decoration: new InputDecoration(
                      hintText: "이용 인원을 선택해주세요.",
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
              SizedBox(
                height: 30,
              ),
              Text(
                "제공 금액",
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
                    keyboardType: TextInputType.number,
                    inputFormatters: [ThousandsSeparatorInputFormatter()],
                    focusNode: amount,
                    onChanged: (v) {
                      amountValidate = v;
                      var formatter = NumberFormat('#,###,000');
                      amountValidate =
                          formatter.format(int.parse(amountValidate));
                      print(amountValidate);
                      print("done");
                    },
                    decoration: new InputDecoration(
                      hintText: "제공금액을 입력하세요.",
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
                "캠페인 형태 선택",
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        changebtn1 = true;
                        changebtn2 = false;
                        showbtn1data = true;
                        showbtn2data = false;
                      });
                    },
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                          color: changebtn1
                              ? Color(0xffEA9FA3)
                              : Color(0xffF9F8F8),
                          border: Border.all(
                              color: changebtn1
                                  ? Color(0xffEA9FA3)
                                  : Color(0xffD1D0D0)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                          child: Text(changebtn1 ? "방문형매장,오프라인" : "방문형매장,오프라인",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: changebtn1
                                      ? Colors.white
                                      : Color(0xff666666),
                                  fontFamily: "Noto Sans KR",
                                  fontWeight: FontWeight.w300))),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        changebtn2 = true;
                        changebtn1 = false;
                        showbtn2data = true;
                        showbtn1data = false;
                        showbtn3data = false;
                        changebtn3 = false;
                        changebtn4 = false;
                        showbtn4data = false;
                      });
                    },
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                          color: changebtn2
                              ? Color(0xffEA9FA3)
                              : Color(0xffF9F8F8),
                          border: Border.all(
                              color: changebtn2
                                  ? Color(0xffEA9FA3)
                                  : Color(0xffD1D0D0)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                          child: Text(changebtn2 ? "배송형제품,온라인" : "배송형제품,온라인",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: changebtn2
                                      ? Colors.white
                                      : Color(0xff666666),
                                  fontFamily: "Noto Sans KR",
                                  fontWeight: FontWeight.w300))),
                    ),
                  )
                ],
              ),
              showbtn1data
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "방문 및 예약안내",
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
                            margin: EdgeInsets.only(top: 10),
                            height: 150,
                            child: TextFormField(
                              focusNode: buttononedata,
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    detailsValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  detailsValidate = true;
                                }
                              },
                              maxLines: 10,
                              decoration: new InputDecoration(
                                hintText: "업체의 운영시간 및 인플루언서 방문 가능시간을 적어주세요.",
                                //   fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                                border: new OutlineInputBorder(),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              SizedBox(
                height: 20,
              ),
              Text(
                "미디어 선택",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        changebtn3 = true;
                        showbtn3data = true;
                        // showbtn2data = false;
                        // changebtn2 = false;
                        changebtn4 = false;
                        showbtn4data = false;
                      });
                    },
                    child: Container(
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xffF9F8F8),
                          border: Border.all(
                              color: changebtn3
                                  ? Color(0xff0BC95F)
                                  : Color(0xffD1D0D0)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                          child: Text("Blog",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: changebtn3
                                      ? Color(0xff0BC95F)
                                      : Color(0xff666666),
                                  fontFamily: "Noto Sans KR",
                                  fontWeight: FontWeight.bold))),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        changebtn4 = true;
                        //  showbtn2data = false;
                        showbtn3data = false;
                        showbtn4data = true;
                        //changebtn2 = false;
                        changebtn3 = false;
                      });
                    },
                    child: Container(
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xffF9F8F8),
                          border: Border.all(
                              color: changebtn4
                                  ? Color(0xffD00373)
                                  : Color(0xffD1D0D0)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                          child: Text("Instargram",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: changebtn4
                                      ? Color(0xffD00373)
                                      : Color(0xff666666),
                                  fontFamily: "Noto Sans KR",
                                  fontWeight: FontWeight.bold))),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "상세페이지 등록",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      getImage();
                      setState(() {
                        imagepic1 = true;
                      });
                    },
                    child: Container(
                        width: 150,
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
                                    width: 150,
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
                      getImage();
                      setState(() {
                        imagepic1 = false;
                      });
                    },
                    child: Container(
                      width: 150,
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
                ],
              ),
              SizedBox(
                height: 15,
              ),
              showbtn2data
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "서비스 상세페이지 등록",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xffF9F8F8),
                              border: Border.all(color: Color(0xffD1D0D0)),
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                              child: Text("파일 선택하기",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff666666),
                                      fontFamily: "Noto Sans KR",
                                      fontWeight: FontWeight.w300))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "서비스 제공내역",
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
                            height: 150,
                            child: TextFormField(
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    historyValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  historyValidate = true;
                                }
                              },
                              maxLines: 10,
                              decoration: new InputDecoration(
                                hintText: "업체에서 제공하는 서비스에 대한 내용을 적어주세요.",
                                //   fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                                border: new OutlineInputBorder(),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "방문 및 예약안내",
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
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    keywordValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  keywordValidate = true;
                                }
                              },
                              decoration: new InputDecoration(
                                hintText: "주소를 검색해주세요.",
                                //   fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                                border: new OutlineInputBorder(),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "서비스 미션",
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
                            height: 150,
                            child: TextFormField(
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    missionValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  missionValidate = true;
                                }
                              },
                              maxLines: 10,
                              decoration: new InputDecoration(
                                hintText: "업체의 운영시간 및 인플루언서 방문 가능시간을 적어주세요.",
                                //   fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                                border: new OutlineInputBorder(),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  : Container(),
              showbtn3data
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "제공내역",
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
                            height: 150,
                            child: TextFormField(
                              focusNode: button3data1,
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    historyValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  historyValidate = true;
                                }
                              },
                              maxLines: 10,
                              decoration: new InputDecoration(
                                hintText: "업체에서 제공하는 서비스에 대한 내용을 적어주세요.",
                                //   fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                                border: new OutlineInputBorder(),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "검색 키워드",
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
                              height: 80,
                              child: TextFieldTags(
                                  tagsStyler: TagsStyler(
                                    tagDecoration: BoxDecoration(
                                      color: Color(0xffEA9FA3),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    tagCancelIcon: Icon(Icons.cancel,
                                        size: 15.0, color: Colors.white),
                                  ),
                                  textFieldStyler: TextFieldStyler(
                                    textFieldBorder: new OutlineInputBorder(),
                                    textFieldEnabledBorder: OutlineInputBorder(
                                      borderSide: changeboder1 ? const BorderSide(
                                          color: Color(0xffEA9FA3), width: 2.0):const BorderSide(
                                          color: Colors.grey, width: 0.0)
                                    ),
                                    hintText: "원하시는 검색키워드를 입력해주세요.",
                                    hintStyle: TextStyle(
                                        color: Color(0xffAAAAAA),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Noto Sans KR"),
                                  ),

                                  onTag: (tag) {
                                    blogTags.add(tag);
                                    print(blogTags);
                                    setState(() {
                                      changeboder1 = false;
                                    });
                                  },
                                  onDelete: (tag) {
                                    blogTags.remove(tag);
                                    print(blogTags.toString() + "list");
                                  },
                                  validator: (tag) {
                                    if (blogTags.length > 0) {
                                      return "Only provide one tag";
                                    }
                                    return null;
                                  })),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "서브 키워드",
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
                              height: 80,
                              child: TextFieldTags(
                                  tagsStyler: TagsStyler(
                                    tagDecoration: BoxDecoration(
                                      color: Color(0xffEA9FA3),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    tagCancelIcon: Icon(Icons.cancel,
                                        size: 15.0, color: Colors.white),
                                  ),
                                  textFieldStyler: TextFieldStyler(
                                    textFieldBorder: new OutlineInputBorder(),
                                    textFieldEnabledBorder: OutlineInputBorder(
                                      borderSide: changeboder2 ? const BorderSide(
                                          color: Color(0xffEA9FA3), width: 2.0):const BorderSide(
                                          color: Colors.grey, width: 0.0),
                                    ),
                                    hintText: "원하시는 검색키워드를 입력해주세요.",
                                    hintStyle: TextStyle(
                                        color: Color(0xffAAAAAA),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Noto Sans KR"),
                                  ),
                                  onTag: (tag) {
                                    blogTags2.add(tag);
                                    print(blogTags2);
                                    setState(() {
                                      changeboder2 = false;
                                    });
                                  },
                                  onDelete: (tag) {
                                    blogTags2.remove(tag);
                                    print(blogTags2.toString() + "list");
                                  },
                                  validator: (tag) {
                                    if (blogTags2.length > 2) {
                                      return "Only provide three tags";
                                    }
                                    return null;
                                  })),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "캠페인 미션",
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
                            height: 150,
                            child: TextFormField(
                              focusNode: button3data2,
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    missionValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  missionValidate = true;
                                }
                              },
                              maxLines: 10,
                              decoration: new InputDecoration(
                                hintText: "인플루언서에게 원하는 미션을 입력해주세요.",
                                //   fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                                border: new OutlineInputBorder(),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  : Container(),
              showbtn4data
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "제공내역",
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
                            height: 150,
                            child: TextFormField(
                              focusNode: button4data1,
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    historyValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  historyValidate = true;
                                }
                              },
                              maxLines: 10,
                              decoration: new InputDecoration(
                                hintText: "업체에서 제공하는 서비스에 대한 내용을 적어주세요.",
                                //   fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                                border: new OutlineInputBorder(),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "해시태그",
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
                              height: 80,
                              child: TextFieldTags(
                                  tagsStyler: TagsStyler(
                                    tagDecoration: BoxDecoration(
                                      color: Color(0xffEA9FA3),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    tagCancelIcon: Icon(Icons.cancel,
                                        size: 15.0, color: Colors.white),
                                  ),
                                  textFieldStyler: TextFieldStyler(
                                    textFieldBorder: new OutlineInputBorder(),
                                    textFieldEnabledBorder: OutlineInputBorder(
                                      borderSide: changeboder3 ? const BorderSide(
                                          color: Color(0xffEA9FA3), width: 2.0):const BorderSide(
                                          color: Colors.grey, width: 0.0),
                                    ),
                                    hintText: "원하시는 검색키워드를 입력해주세요.",
                                    hintStyle: TextStyle(
                                        color: Color(0xffAAAAAA),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Noto Sans KR"),
                                  ),
                                  onTag: (tag) {
                                    intagramTags.add(tag);
                                    print(intagramTags);
                                    setState(() {
                                      changeboder3 = false;
                                    });
                                  },
                                  onDelete: (tag) {
                                    intagramTags.remove(tag);
                                    print(intagramTags.toString() + "list");
                                  },
                                  validator: (tag) {
                                    if (intagramTags.length > 0) {
                                      return "Only provide one tags";
                                    }
                                    return null;
                                  })),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "사람태그",
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
                              height: 80,
                              child: TextFieldTags(
                                  tagsStyler: TagsStyler(
                                    tagDecoration: BoxDecoration(
                                      color: Color(0xffEA9FA3),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    tagCancelIcon: Icon(Icons.cancel,
                                        size: 15.0, color: Colors.white),
                                  ),
                                  textFieldStyler: TextFieldStyler(
                                    textFieldBorder: new OutlineInputBorder(),
                                    textFieldEnabledBorder: OutlineInputBorder(
                                      borderSide: changeboder4 ? const BorderSide(
                                          color: Color(0xffEA9FA3), width: 2.0):const BorderSide(
                                          color: Colors.grey, width: 0.0),
                                    ),
                                    hintText: "원하시는 검색키워드를 입력해주세요.",
                                    hintStyle: TextStyle(
                                        color: Color(0xffAAAAAA),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Noto Sans KR"),
                                  ),
                                  onTag: (tag) {
                                    intagramTags2.add(tag);
                                    print(intagramTags2);
                                    setState(() {
                                      changeboder4 = false;
                                    });
                                  },
                                  onDelete: (tag) {
                                    intagramTags2.remove(tag);
                                    print(intagramTags2.toString() + "list");
                                  },
                                  validator: (tag) {
                                    if (intagramTags2.length > 2) {
                                      return "Only provide three tags";
                                    }
                                    return null;
                                  })),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "캠페인 미션",
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
                            height: 150,
                            child: TextFormField(
                              focusNode: button4data2,
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    missionValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  missionValidate = true;
                                }
                              },
                              maxLines: 10,
                              decoration: new InputDecoration(
                                hintText: "인플루언서에게 원하는 미션을 입력해주세요.",
                                //   fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                                border: new OutlineInputBorder(),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  : Container(),
              InkWell(
                  onTap: () {
                    if (titleValidate == '' ||
                        titleValidate.length < 2 ||
                        titleValidate.length > 20) {
                      message = "캠페인 제목을 입력해주세요";
                      showAlertDialog(context);
                      title.requestFocus();
                    } else if (desValidate == '' ||
                        desValidate.length < 2 ||
                        desValidate.length > 30) {
                      message = "캠페인 설명을 입력해주세요";
                      showAlertDialog(context);
                      des.requestFocus();
                    } else if (_dateTime1.day == DateTime.now().day) {
                      message = "캠페인 기간을 입력해주세요";
                      showAlertDialog(context);
                      date.requestFocus();
                    } else if (recruitmentValidate == '') {
                      message = "모집인원을 입력해주세요";
                      showAlertDialog(context);
                      recruitment.requestFocus();
                    } else if (int.parse(recruitmentValidate) > 99) {
                      message = "Enter correct number within 100";
                      showAlertDialog(context);
                      recruitment.requestFocus();
                    } else if (amountValidate == '') {
                      message = "제공 금액을 입력해주세요";
                      showAlertDialog(context);
                      amount.requestFocus();
                    } else if (showbtn1data && !detailsValidate) {
                      message = "방문가능 시간 및 안내사항을 입력해주세요";
                      showAlertDialog(context);
                      buttononedata.requestFocus();
                    } else if (_image == null) {
                      message = "캠페인 이미지를 등록해주세요";
                      showAlertDialog(context);
                    } else if (showbtn3data && !historyValidate) {
                      message = "제공 내역을 입력해주세요";
                      showAlertDialog(context);
                      button3data1.requestFocus();
                      print("done");
                    } else if (showbtn3data && blogTags.length < 1) {
                      setState(() {
                        changeboder1 = true;
                      });
                      message = "메인 키워드를 입력해주세요";
                      showAlertDialog(context);
                    } else if (showbtn3data && blogTags2.length < 1) {
                      setState(() {
                        changeboder2 = true;
                      });
                      message = "서브 키워드를 입력해주세요";
                      showAlertDialog(context);
                    } else if (showbtn3data && !missionValidate) {
                      message = "캠페인 미션을 입력해주세요";
                      showAlertDialog(context);
                      button3data2.requestFocus();
                    } else if (showbtn4data && !historyValidate) {
                      message = "제공 내역을 입력해주세요";
                      showAlertDialog(context);
                      button4data1.requestFocus();
                      print("done");
                    } else if (showbtn4data && intagramTags.length < 1) {
                      setState(() {
                        changeboder3 = true;
                      });
                      message = "해시태그를 입력해주세요";
                      showAlertDialog(context);
                    } else if (showbtn4data && intagramTags2.length < 1) {
                      setState(() {
                        changeboder4 = true;
                      });
                      message = "사람태그를 입력해주세요";
                      showAlertDialog(context);
                    } else if (showbtn4data && !missionValidate) {
                      message = "캠페인 미션을 입력해주세요";
                      showAlertDialog(context);
                      button4data2.requestFocus();
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
                        child: Text("서비스 등록",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w300,
                                fontFamily: "Noto Sans KR"))),
                  )),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  static const separator = ','; // Change this to '.' for other locales

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Short-circuit if the new value is empty
    if (newValue.text.length == 0) {
      return newValue.copyWith(text: '');
    }

    // Handle "deletion" of separator character
    String oldValueText = oldValue.text.replaceAll(separator, '');
    String newValueText = newValue.text.replaceAll(separator, '');

    if (oldValue.text.endsWith(separator) &&
        oldValue.text.length == newValue.text.length + 1) {
      newValueText = newValueText.substring(0, newValueText.length - 1);
    }

    // Only process if the old value and new value are different
    if (oldValueText != newValueText) {
      int selectionIndex =
          newValue.text.length - newValue.selection.extentOffset;
      final chars = newValueText.split('');

      String newString = '';
      for (int i = chars.length - 1; i >= 0; i--) {
        if ((chars.length - 1 - i) % 3 == 0 && i != chars.length - 1)
          newString = separator + newString;
        newString = chars[i] + newString;
      }

      return TextEditingValue(
        text: newString.toString(),
        selection: TextSelection.collapsed(
          offset: newString.length - selectionIndex,
        ),
      );
    }

    // If the new value and old value are the same, just return as-is
    return newValue;
  }
}
