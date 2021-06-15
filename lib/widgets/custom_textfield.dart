import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {

  BuildContext context;
  FocusNode focusNode;
  String hint;
  Function(String) onchange;


  CustomTextField({this.context, this.focusNode,this.hint, this.onchange});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  String value = '';
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData(
        primaryColor: Color(0xffEA9FA3),
        primaryColorDark: Color(0xffDDDDDD),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 11.sp),
        height: 46.sp,
        child: TextFormField(
          focusNode: widget.focusNode,
          onChanged: widget.onchange,
          decoration: new InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(
                color: Color(0xffAAAAAA),
                fontSize: 12.sp,
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
    );
  }
}
