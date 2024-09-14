import 'package:flutter/material.dart';
import 'package:flutter_fake_shop/core/theme/text_theme_extension.dart';
import 'package:flutter_fake_shop/core/widget/fs_input.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/auth/login_header.png',
                  width: 240.0,
                  height: 240.0,
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                'Here we go',
                style: Theme.of(context).textTheme.h1.copyWith(fontSize: 32),
              ),
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.h4,
              ),
              const SizedBox(height: 36.0),
              FsInput(
                controller: _emailCtrl,
                hintText: 'Email',
                obscureText: false,
                prefixIcon: const Icon(Icons.email_outlined),
                // errorText: state is LoginFailedValidateEmail
                //     ? state.emailErrorMsg
                //     : null,
                onChanged: (text) {},
                validator: (text) {
                  // if (!EmailValidator.validate(text!)) {
                  //   return 'กรุณากรอกอีเมลให้ถูกต้อง (you@example.com)';
                  // }

                  return null;
                },
              ),
              FsInput(
                controller: _passwordCtrl,
                hintText: 'Password',
                obscureText: true,
                prefixIcon: const Icon(Icons.enhanced_encryption_outlined),
                // errorText: state is LoginFailedValidatePassword
                //     ? state.passwordErrorMsg
                //     : null,
                onChanged: (text) {},
                validator: (text) {
                  if (text!.length < 8) {
                    return 'กรุณากรอกรหัสผ่าน (อย่างน้อย 8 ตัวอักษร)';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 36.0),
              _signinButton(context, _formKey),
              _firstTime(context),
            ],
          ),
        ),
      ),
    );
  }
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
