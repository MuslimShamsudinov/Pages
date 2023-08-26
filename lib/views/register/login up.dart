import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/views/page/pages_stages.dart';
import 'package:flutter_application_1/views/register/sign%20up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;
  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: myColor,
          image: DecorationImage(
            image: AssetImage("assets/images/road.jpeg"),
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(myColor.withOpacity(0.2), BlendMode.dstATop),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: [
            // Positioned(top: 80, child: _buildTop()),
            Positioned(bottom: 0, child: _buildBottom()),
          ]),
        ),
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: _buildFrom(),
        ),
      ),
    );
  }

  Widget _buildFrom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "Welcome to World App",
        //   style: TextStyle(
        //       color: myColor, fontSize: 32, fontWeight: FontWeight.w500),
        // ),
        // _buildGreyText("Plase Login with your information"),
        _buildGreyText2("Please sign in to your account"),
        SizedBox(height: 60),
        _buildGreyText("Email address"),
        _buildInputField(emailController),
        SizedBox(
          height: 40,
        ),
        _buildGreyText("Password"),
        _buildInputField(passwordController, isPassword: true),
        SizedBox(height: 20),
        _buildRememberForget(),
        SizedBox(
          height: 20,
        ),
        _buildLoginButton(),
        SizedBox(
          height: 20,
        ),
        _buildOtherLogin(),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        // fontSize: 3
      ),
    );
  }

  Widget _buildGreyText2(String text) {
    return Center(
      child: DefaultTextStyle(
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText(
              'Please sign in to your account',
              textStyle: TextStyle(color: Colors.black),
            ),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }

  Widget _buildInputField(TextEditingController controller,
      {isPassword = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: isPassword
            ? InkWell(
                onTap: () {},
                child: Icon(
                  Icons.remove_red_eye,
                  color: Colors.deepPurple,
                ))
            : InkWell(
                onTap: () {},
                child: Icon(
                  Icons.done,
                  color: Colors.deepPurple,
                )),
      ),
      obscureText: isPassword,
    );
  }

  Widget _buildRememberForget() {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                    value: rememberUser,
                    onChanged: (value) {
                      setState(() {
                        rememberUser = value!;
                      });
                    }),
                _buildGreyText("Remember me")
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage2()));
              },
              child: _buildGreyText("I forgot my password"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    
    return ElevatedButton(
      onPressed: () {
        debugPrint("Email : ${emailController.text}");
        debugPrint("Password : ${passwordController.text}");
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        maximumSize: const Size.fromHeight(60),
      ),
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PagesWidgets(),
                ));
          },
          child: Text("LOGIN")),
    );
  }

Widget _buildOtherLogin() {
    return Center(
      child: Column(
        children: [
          _buildGreyText("Or login with"),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tab(icon: Image.asset("assets/images/facebook.jpeg")),
              Tab(icon: Image.asset("assets/images/github.jpeg")),
              Tab(icon: Image.asset("assets/images/twitter.jpeg")),
            ],
          ),
        ],
      ),
    );
  }
}
