import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleDoneShape(),
              SizedBox(height: 50),
              SignInSuccessLabel(),
              SizedBox(height: 15),
              WelcomeLabel(),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleDoneShape extends StatelessWidget {
  const CircleDoneShape({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 76,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Icon(
        Icons.done_all,
        size: 50,
        color: Colors.purple,
      ),
    );
  }
}

class WelcomeLabel extends StatelessWidget {
  const WelcomeLabel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome to Hysys",
      style: TextStyle(
        color: Colors.black,
        fontSize: 28.0,
      ),
    );
  }
}

class SignInSuccessLabel extends StatelessWidget {
  const SignInSuccessLabel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sign in successful!",
      style: TextStyle(
        color: Colors.black,
        fontSize: 14.0,
      ),
    );
  }
}
