import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SignInSuccessLabel(),
          SizedBox(height: 15),
          WelcomeLabel(),
        ],
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
