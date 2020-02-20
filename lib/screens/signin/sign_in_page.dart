import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/screens/signup/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget _logo() {
    return Positioned(
      top: 0,
      child: Container(
          padding: EdgeInsets.only(left: 40, top: 20),
          child: Text(
            "Logo",
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget _backgroudColorWite() {
    return Positioned(
      top: 0,
      child: Container(
        height: 160,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(120.0),
            bottomRight: const Radius.circular(120.0),
          ),
        ),
      ),
    );
  }

  Widget _backgroudColor() {
    return Positioned(
      top: 0,
      child: Container(
        height: 160,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 214, 153, 255),
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(120.0),
            bottomRight: const Radius.circular(120.0),
            topRight: const Radius.circular(120.0),
          ),
        ),
      ),
    );
  }

  Widget _bodyInfo() {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(120.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'WELCOME BACK',
                style: TextStyle(fontSize: 62, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.navigate_next),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textNextPage() {
    return Positioned(
      bottom: 60,
      left: 40,
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
            },
            child: Text(
              'Sign up',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(width: 250,),
          InkWell(
            onTap: (){
            },
            child: Text(
              'Forgot password',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color.fromARGB(255, 255, 191, 128),
            ),
            _backgroudColorWite(),
            _backgroudColor(),
            _logo(),
            _bodyInfo(),
            _textNextPage(),
          ],
        ),
      ),
    );
  }
}
