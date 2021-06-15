import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette/Screens/signUp_Screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(),
              Text(
                "Palette",
                style: TextStyle(
                    fontSize: 50,
                    color: Color(0xffEA9FA3),
                    fontWeight: FontWeight.bold,
                    fontFamily: "yanoljayache"),
              ),
              SizedBox(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return SignUpScreen();
                      }));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.87,
                      height: 50,
                      // decoration: BoxDecoration(
                      //     border: Border.all(
                      //       color: Color(0xffE6E6EA),
                      //     ),
                      //     borderRadius: BorderRadius.all(Radius.circular(5))),
                      child:
                      Image.asset(
                          "assets/images/login.jpeg",
                          fit: BoxFit.fill),
                      // Center(
                      //     child: Text(
                      //   "Login",
                      //   style: TextStyle(fontSize: 20, color: Colors.green),
                      // )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Text(
                      "인플루언서이신가요?",
                      style: TextStyle(fontSize: 15, color: Color(0xff999999)),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
