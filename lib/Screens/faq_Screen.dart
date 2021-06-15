import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  bool showdata = true;

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
          "FAQ",
          style: TextStyle(
            color: Color(0xff333333),
            fontWeight: FontWeight.bold,
            fontFamily: "Noto Sans KR",
          ),
        ),
        centerTitle: true,
        elevation: 1.5,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            ListTile(
                title: InkWell(
                  onTap: () {
                    setState(() {
                      showdata = false;
                    });
                  },
                  child: Text(
                    "서비스 어떻게 이용하나요?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff333333),
                      fontWeight: showdata ? FontWeight.w300 : FontWeight.bold,
                      fontFamily: "Noto Sans KR",
                    ),
                  ),
                ),
                trailing: showdata
                    ? Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xffAAAAAA),
                      )
                    : Container(
                  width: 1,
                )),
            Divider(
              thickness: 1,
              height: 0,
              endIndent: 15,
              indent: 15,
            ),
            !showdata
                ? Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "서비스 이용 방법",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Noto Sans KR",
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) => Column(
                        children: [
                          ListTile(
                            title: Text(
                              "서비스 신청은 어떻게 하나요?",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff333333),
                                fontWeight: FontWeight.w300,
                                fontFamily: "Noto Sans KR",
                              ),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Color(0xffAAAAAA),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            height: 0,
                            endIndent: 15,
                            indent: 15,
                          )
                        ],
                      ),
                    ),
                  ),
            showdata
                ? Container()
                : Column(
                    children: [
                      Divider(
                        thickness: 1,
                        height: 0,
                        endIndent: 15,
                        indent: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                showdata = true;
                              });
                            },
                            child: Container(
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffF9F8F8),
                                  border: Border.all(
                                    color: Color(0xffE1E1E1),
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Text(
                                "목록",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff666666),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                              )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
