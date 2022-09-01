import 'package:flutter/material.dart';

import 'screen_layouts/desktop.dart';
import 'screen_layouts/laptop.dart';
import 'screen_layouts/tablet.dart';
import 'screen_layouts/watch.dart';
import 'screen_layouts/mobile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var isWatch = false;
    var isMobile = false;
    var isTablet = false;
    var isLaptop = false;
    var isDesktop = false;

    var size = MediaQuery.of(context).size;

    if (size.width < 249.98) {
      isWatch = true;
    } else if (size.width > 249.99 && size.width < 480.98) {
      isMobile = true;
    } else if (size.width > 480.99 && size.width < 768.98) {
      isTablet = true;
    } else if (size.width > 768.99 && size.width < 1279.98) {
      isLaptop = true;
    } else if (size.width > 1279.99) {
      isDesktop = true;
    }
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: isWatch
          ? const Watch()
          : isMobile
              ? const Mobile()
              : isTablet
                  ? const Tablet()
                  : isLaptop
                      ? const Laptop()
                      : isDesktop
                          ? const Desktop()
                          : Container(),
    ));
  }
}
