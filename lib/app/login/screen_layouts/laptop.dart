import 'package:flutter/material.dart';

import '../components/button_widget.dart';
import '../components/logo_widget.dart';

class Laptop extends StatefulWidget {
  const Laptop({Key? key}) : super(key: key);

  @override
  State<Laptop> createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    double paddingTop = size.height * 0.159;
    double fontTitleSize = size.height * 0.047;

    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(top: paddingTop),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      LogoWidget(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: paddingTop / 2.9,
                      left: paddingTop / 3,
                      right: paddingTop / 3,
                    ),
                    child: Text(
                      'Get your Money Under Control',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontTitleSize,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: paddingTop / 9.9,
                        left: paddingTop / 3,
                        right: paddingTop / 3),
                    child: Text(
                      'Manage your expenses.\nSeamlessly.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 118, 118, 118),
                        fontSize: fontTitleSize / 1.8,
                      ),
                    ),
                  ),
                  const SizedBox(height: 83),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ButtonWidget(
                        buttonText: 'Sign Up with Email ID',
                        textColor: Colors.white,
                        buttonColor: Color.fromARGB(255, 94, 92, 229),
                      ),
                      const SizedBox(height: 13),
                      const ButtonWidget(
                        iconImage: 'assets/google_logo.png',
                        buttonText: 'Sign Up with Google',
                        textColor: Colors.black,
                        buttonColor: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: paddingTop * 0.38,
                            left: paddingTop / 3,
                            right: paddingTop / 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: fontTitleSize / 2.3,
                              ),
                            ),
                            Text(
                              'Sign In',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontSize: fontTitleSize / 2.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
