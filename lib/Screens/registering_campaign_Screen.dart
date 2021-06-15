import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette/widgets/bottom_Bar.dart';
import 'package:simple_tooltip/simple_tooltip.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'load_campaign_Screen.dart';

class RegisteringcampaignScreen extends StatefulWidget {
  @override
  _RegisteringcampaignScreenState createState() =>
      _RegisteringcampaignScreenState();
}

class _RegisteringcampaignScreenState extends State<RegisteringcampaignScreen> {
  String titleValidate = '';
  String desValidate = '';
  String periodValidate = '';
  String recruitmentValidate = '';
  String amountValidate = '';
  bool informationValidate = false;
  bool detailsValidate = false;
  bool missionValidate = false;
  bool keywordValidate = false;
  bool historyValidate = false;
  bool hastagValidate = false;
  bool persontagValidate = false;
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

  File _image;
  File _image2;

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
  FocusNode period;
  FocusNode recruitment;
  FocusNode amount;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = FocusNode();
    des = FocusNode();
    period = FocusNode();
    recruitment = FocusNode();
    amount = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          "캠페인 등록하기",
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
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoadCompaignScreen();
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
                ),
              ),
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
                    "캠페인 제목",
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
                          thickness: 1.5,
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
              Theme(
                data: new ThemeData(
                  primaryColor: Color(0xffEA9FA3),
                  primaryColorDark: Color(0xffDDDDDD),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 50,
                  child: TextFormField(
                    focusNode: period,
                    onChanged: (v) {
                      periodValidate = v;
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
                          thickness: 1.5,
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
                    focusNode: amount,
                    onChanged: (v) {
                      amountValidate = v;
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
                            margin: EdgeInsets.only(top: 5),
                            height: 50,
                            child: TextFormField(
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    informationValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  informationValidate = true;
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
                        Theme(
                          data: new ThemeData(
                            primaryColor: Color(0xffEA9FA3),
                            primaryColorDark: Color(0xffDDDDDD),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 150,
                            child: TextFormField(
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
                        showbtn2data = false;
                        changebtn2 = false;
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
                        showbtn2data = false;
                        showbtn3data = false;
                        showbtn4data = true;
                        changebtn2 = false;
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
                          mainAxisAlignment:
                          MainAxisAlignment.center,
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
                                hintText: "원하시는 검색키워드를 입력해주세요.",
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
                            height: 50,
                            child: TextFormField(
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    hastagValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  hastagValidate = true;
                                }
                              },
                              decoration: new InputDecoration(
                                hintText: "원하시는 해시태그를 입력해주세요.",
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
                            height: 50,
                            child: TextFormField(
                              onChanged: (v) {
                                if (v.length == 0) {
                                  setState(() {
                                    persontagValidate = false;
                                  });
                                } else {
                                  setState(() {});
                                  persontagValidate = true;
                                }
                              },
                              decoration: new InputDecoration(
                                hintText: "태그하실 사용자이름을 입력해주세요.",
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
                  if (titleValidate == '') {
                    title.requestFocus();
                  } else if (desValidate == '') {
                    des.requestFocus();
                  } else if (periodValidate == '') {
                    period.requestFocus();
                  } else if (recruitmentValidate == '') {
                    recruitment.requestFocus();
                  } else if (amountValidate == '') {
                    amount.requestFocus();
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
                      color: Color(0xffF9F8F8),
                      border: Border.all(color: Color(0xffD1D0D0)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text("서비스 등록",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff666666),
                              fontFamily: "Noto Sans KR",
                              fontWeight: FontWeight.w300))),
                ),
              ),
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
