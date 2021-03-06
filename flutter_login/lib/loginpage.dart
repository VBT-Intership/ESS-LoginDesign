import 'package:flutter/material.dart';
import 'package:flutter_login/welcomepage.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  Widget emailInput = Container(
    padding: const EdgeInsets.all(15),
    child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Email Address",
          ),
          validator: (value) {
            if (value.isEmpty) {
              return "Please Enter Some Text";
            }
            return null;
          },
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Align(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              children: [
                SizedBox(height: 70),
                HysysTitle(),
                EmployeeLoginTitle(),
                WelcomeTitle(),
                SigninTitle(),
                SizedBox(height: 25),
                EmailInput(),
                PasswordInput(),
                ForgotPasswordTitle(),
                SignInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WelcomeView()));
          },
          color: Colors.blue[300],
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ],
    );
  }
}

class ForgotPasswordTitle extends StatelessWidget {
  const ForgotPasswordTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.all(10),
      child: Text(
        "Forgot Password ?",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16.0,
        ),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue[300],
          ),
        ),
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,
        ),
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "Email address",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue[300]),
        ),
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,
        ),
      ),
    );
  }
}

class SigninTitle extends StatelessWidget {
  const SigninTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Text(
        "Please Sign-in to continue",
        style: TextStyle(
          color: Colors.black45,
          fontSize: 18.0,
        ),
      ),
    );
  }
}

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 100,
      child: Text(
        "Welcome!",
        style: TextStyle(
          color: Colors.black,
          fontSize: 28.0,
        ),
      ),
    );
  }
}

class HysysTitle extends StatelessWidget {
  const HysysTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 100,
      child: Text(
        "Hysys >",
        style: TextStyle(
          color: Colors.blue[500],
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class EmployeeLoginTitle extends StatelessWidget {
  const EmployeeLoginTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: Text(
        "Employee Login",
        style: TextStyle(
          color: Colors.black,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
