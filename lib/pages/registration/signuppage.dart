import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:signal_app/pages/registration/LoginPage.dart';
import 'package:signal_app/pages/registration/reset_password.dart';
import 'package:signal_app/widgets/re_usedfield.dart';

import '../../widgets/re_used_buttons.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isVisible = false;
  String _passwordVal = '';
  String _emailVal = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Color(0xFF0D47A1),
              Colors.black,
              Color(0xFF1A237E),
              Colors.black,
              Colors.deepPurple,
              Colors.black,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            border: Border.all(width: 2, color: Colors.white30),
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 2, color: Colors.white30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(children: [
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Regiater with us',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ReUsedFields(
                          hintText: 'Email',
                          height: 48,
                          isSuffixIcon: false,
                          onChanged: (value) {
                            setState(() {
                              _emailVal = value;
                            });
                          },
                          textEditingController: null,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ReUsedFields(
                          hintText: 'Password',
                          height: 48,
                          isSuffixIcon: true,
                          icon: InkWell(
                            onTap: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            child: Icon(_isVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _passwordVal = value;
                            });
                          },
                          textEditingController: null,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ReUsedFields(
                          hintText: 'Confirm Password',
                          height: 48,
                          isSuffixIcon: true,
                          icon: InkWell(
                            onTap: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            child: Icon(_isVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _passwordVal = value;
                            });
                          },
                          textEditingController: null,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            child: const Text(
                              'Sign up with google',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ResetpswrdPage(),
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      RedButton(
                        text: 'Sign Up',
                        width: 120,
                        color: _emailVal != '' && _passwordVal != ''
                            ? Colors.blueAccent
                            : const Color(0xFFFBD4D5),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
