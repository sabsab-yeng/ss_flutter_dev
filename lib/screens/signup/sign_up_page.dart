import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/screens/signin/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  
  Widget _logo() {
    return Positioned(
      top: 0,
      child: Container(
          padding: EdgeInsets.only(left: 40, top: 40),
          child: Text("Logo", style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),)),
    );
  }

  Widget _backgroudColor() {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 214, 153, 255),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(120.0),
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
            topLeft: const Radius.circular(120.0),
            bottomLeft: const Radius.circular(120.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'CREATE ACCOUNT',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                ),
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
                height:30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign up',
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

  Widget _textBackPage() {
    return Positioned(
      bottom: 60,
      left: 40,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage()));
        },
        child: Text(
          'Sign in',
          style: TextStyle(decoration: TextDecoration.underline),
        ),
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
            _logo(),
            _backgroudColor(),
            _bodyInfo(),
            _textBackPage(),
          ],
        ),
      ),
    );
  }
}
