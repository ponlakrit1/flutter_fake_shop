import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fake_shop/core/di/injector.dart';
import 'package:flutter_fake_shop/core/theme/app_color.dart';
import 'package:flutter_fake_shop/core/theme/text_theme_extension.dart';
import 'package:flutter_fake_shop/core/widget/fs_button.dart';
import 'package:flutter_fake_shop/core/widget/fs_input.dart';
import 'package:flutter_fake_shop/features/auth/presentation/page/login/bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => injector<LoginBloc>(),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      style:
                          Theme.of(context).textTheme.h1.copyWith(fontSize: 32),
                    ),
                    Text(
                      'Welcome',
                      style: Theme.of(context).textTheme.h4,
                    ),
                    const SizedBox(height: 36.0),
                    FsInput(
                      controller: _emailCtrl,
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorText: state is LoginFailedValidateEmail
                          ? state.emailErrorMsg
                          : null,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Please enter email';
                        } else if (!RegExp(
                                r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                            .hasMatch(text)) {
                          return 'Please enter valid email (you@mail.com)';
                        }

                        return null;
                      },
                    ),
                    FsInput(
                      controller: _passwordCtrl,
                      hintText: 'Password',
                      obscureText: true,
                      prefixIcon:
                          const Icon(Icons.enhanced_encryption_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorText: state is LoginFailedValidatePassword
                          ? state.passwordErrorMsg
                          : null,
                      validator: (text) {
                        if (text!.length < 8) {
                          return 'A minimum 8 characters password';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 36.0),
                    FsButton(
                      buttonColor: AppColor.primary,
                      onPressed: () {},
                      label: 'Sign in',
                    ),
                    const SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Your first time?',
                          style: Theme.of(context)
                              .textTheme
                              .p4
                              .copyWith(color: AppColor.primary),
                        ),
                        TextButton(
                          onPressed: () => {},
                          child: Text(
                            'Sing up',
                            style: Theme.of(context)
                                .textTheme
                                .subTitle4
                                .copyWith(
                                    color: AppColor.primary,
                                    fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
