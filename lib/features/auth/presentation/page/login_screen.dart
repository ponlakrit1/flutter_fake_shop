import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _signinForm(context),
    );
  }

  Widget _signinForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(children: <Widget>[
              // VerticalText(),
              _textLogin(context),
            ]),
            _usernameField(context),
            _passwordField(context),
            _forgotPassword(context),
            _signinButton(context, _formKey),
            _firstTime(context),
          ],
        ),
      ),
    );
  }
}

Widget _usernameField(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: TextFormField(
      style: TextStyle(
        color: Colors.purple,
      ),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
        // border: InputBorder.,
        fillColor: Colors.lightBlueAccent,
        labelText: 'Name',
        labelStyle: TextStyle(
          fontFamily: 'SukumvitSetSemiBold',
          fontSize: 12,
          color: Colors.purple,
        ),
      ),
      validator: (value) => 'Username is too short',
      onChanged: (value) => {},
    ),
  );
}

Widget _passwordField(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 20,
    ),
    child: Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        style: TextStyle(
          color: Colors.purple,
        ),
        obscureText: true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
          ),
          // border: InputBorder.none,
          labelText: 'Password',
          labelStyle: TextStyle(
            fontFamily: 'SukumvitSetSemiBold',
            fontSize: 14,
            color: Colors.purple,
          ),
        ),
        validator: (value) => 'Password is too short',
        onChanged: (value) => {},
      ),
    ),
  );
}

Widget _signinButton(BuildContext context, _formKey) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 40,
      right: 150,
    ),
    child: Container(
      alignment: Alignment.bottomRight,
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            // context.read<SigninBloc>().add(SigninSubmitted());
          }
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => IntroductionPage())
          //         );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign in',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'SukumvitSetSemiBold',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _firstTime(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 1,
    child: Padding(
      padding: const EdgeInsets.only(top: 15),
      //color: Colors.red,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            'Your first time?',
            style: TextStyle(
              fontFamily: 'SukumvitSetSemiBold',
              fontSize: 14,
              color: Colors.purple,
            ),
          ),
          TextButton(
            onPressed: () => {},
            child: Text(
              'Sing up',
              style: TextStyle(
                fontFamily: 'SukumvitSetSemiBold',
                fontSize: 14,
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _forgotPassword(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 15,
      left: 150,
    ),
    child: Container(
      alignment: Alignment.topRight,
      height: 20,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            fontFamily: 'SukumvitSetSemiBold',
            fontSize: 14,
            color: Colors.purple,
          ),
          textAlign: TextAlign.right,
        ),
      ),
    ),
  );
}

Widget _textLogin(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 0,
    ),
    child: Container(
      //color: Colors.green,
      height: 200,
      width: 200,
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
          ),
          Center(
            child: Text(
              'Here we go Welcome',
              style: TextStyle(
                fontFamily: 'SukumvitSetSemiBold',
                fontSize: 24,
                color: Colors.purple,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

void _showSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(content: Text(message));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
