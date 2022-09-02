import 'package:flutter/material.dart';

import '../components/button_widget.dart';
import '../components/logo_widget.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color buttonColor = const Color.fromARGB(255, 94, 92, 229);

    double paddingTop = size.height * 0.159;
    double fontTitleSize = size.height * 0.047;
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(top: paddingTop),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoWidget(logoSize: size.height * 0.1),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: paddingTop / 2.9,
                  left: paddingTop / 3,
                  right: paddingTop / 3),
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
            const Spacer(),
            ButtonWidget(
              buttonText: 'Sign Up with Email ID',
              textColor: Colors.white,
              buttonColor: buttonColor,
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
