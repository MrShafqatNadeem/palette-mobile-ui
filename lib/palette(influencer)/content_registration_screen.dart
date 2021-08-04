import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/widgets/custom_textfield.dart';
class ContentRegistrationScreen extends StatefulWidget {
  @override
  _ContentRegistrationScreenState createState() => _ContentRegistrationScreenState();
}

class _ContentRegistrationScreenState extends State<ContentRegistrationScreen> {
  String address =  '';

  FocusNode addressf;
  void initState() {
    // TODO: implement initState
    super.initState();
    addressf = FocusNode();
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
          "콘텐츠 등록",
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 31.5.sp, right: 20.sp, left: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "(서비스 제목 표시)[대전] 더예쁜 손톱레푸스 둔산점",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(height: 9.sp),
              Text(
                "대전에서 가장 핫한 네일아트전문점",
                style: TextStyle(
                    fontSize: 14.5.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(height: 16.sp),
              //blog container
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width*0.1,
                      height:MediaQuery.of(context).size.height*0.03,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          color: Color(0xff0BC95F),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Blog",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff0BC95F),
                              fontWeight: FontWeight.w700,
                              fontFamily: "yanoljayache"),
                        ),
                      )),
                  SizedBox(width: 8.sp),
                  Container(
                    width: MediaQuery.of(context).size.width*0.1,
                    height:MediaQuery.of(context).size.height*0.03,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                        color: Color(0xffE95252),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "10만원",
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Color(0xffE95252),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Noto Sans KR"),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 50.sp,
                thickness: 10.sp,
                color: Color(0xffF9F8F8),
              ),

              Text(
                "제공내역",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 12.sp,
              ),
              Text(
                "서비스 내용",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              Divider(
                height: 49.sp,
                thickness: 1.sp,
              ),
              Text(
                "검색 키워드",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 12.sp,
              ),
              Text(
                "#대전네일아트전문점, #대전내성발톱, #둔산동네일샵,",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "#둔산동속눈썹리프팅펌",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "- 안내드린 키워드 중 2개 이상을 선택하여 제목과 본문, #태그에 꼭 넣어주세요.",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "- 키워드가 지켜지지 않을 경우 수정요청이 있을 수 있습니다",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              Divider(
                height: 56.sp,
                thickness: 1,
              ),



              Text(
                "캠페인 미션",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- SNS 등록시 제목에 매장명을 꼭 기재해주세요.",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "- 매장 위치 및 지도, 연락처, 운영시간을 소개해주세요.",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "- 제공받으신 서비스 및 인테리어 등의 사진 15장 이상, 동영상 10초 이상을 촬영, 등록해주세요",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                " ※ 타인의 얼굴 노출 시 초상권 문제가 있을 수 있으니, 타인의 얼굴이 노출되지 않아도록 참고 부탁드립니다.",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "- 팔레트 서비스 URL 주소를 꼭 삽입해주세요. http://naver.com(팔레트 서비스 URL 주소 노출)",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              Divider(
                height: 67.sp,
                thickness: 10.sp,
                color: Color(0xffF9F8F8),
              ),


              Text(
                "서비스 미션 내용이 제대로 기재되었는지 확인 후 등록해주세요.",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "캠페인 미션 게시물 주소입력",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans KR"),
              ),
              CustomTextField(
                context: context,
                focusNode: addressf,
                hint: "미션 게시물 주소를 입력해주세요.",
                onchange: (value) {
                  address = value;
                },
              ),
              SizedBox(
                height: 11.sp,
              ),
              InkWell(
                onTap: (){
                  if(address == '')
                    {
                      addressf.requestFocus();
                    }
                  else{

                  }
                },
                child: Container(
                  height: 52.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffEA9FA3),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Center(
                      child: Text("미션 완료",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Noto Sans KR"))),
                ),
              ),
              SizedBox(
                height: 16.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
