import 'package:firstapp/RegisterScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreen createState() => new _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Login",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23))),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 160,
                width: 160,
                child: Image(
                  image: AssetImage('images/login.png'),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Login to your account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff17382e), width: 3),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Email Address",
                    prefixIcon:
                        Icon(Icons.email_outlined, color: Color(0xff17382e)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff17382e), width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password",
                      prefixIcon:
                          Icon(Icons.lock_outlined, color: Color(0xff17382e)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                child: FlatButton(
                  padding: EdgeInsets.all(12),
                  onPressed: () => {},
                  color: Color(0xff17382e),
                  child: Text(
                    "Login".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  showForgetPasswordDialog(context);
                },
                child: Text(
                  "Forgot password? Recover here",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                child: Text(
                  "Don't have account?Signup here",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showForgetPasswordDialog(BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {},
    );
    Widget continueButton = FlatButton(
      child: Text("Continue"),
      onPressed: () {},
    );
    AlertDialog alert = AlertDialog(
      title: Text("Reset Password"),
      content: TextField(
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff17382e), width: 3),
              borderRadius: BorderRadius.circular(10)),
          hintText: "Email Address",
          prefixIcon: Icon(Icons.email_outlined, color: Color(0xff17382e)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      actions: [cancelButton, continueButton],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
