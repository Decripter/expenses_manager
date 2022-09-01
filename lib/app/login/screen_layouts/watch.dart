import 'package:flutter/material.dart';

import '../components/logo_widget.dart';

class Watch extends StatefulWidget {
  const Watch({Key? key}) : super(key: key);

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double paddingTop = size.width * 0.159;
    double fontTitleSize = size.width * 0.08;
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              LogoWidget(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: paddingTop * 0.5,
                left: paddingTop / 3,
                right: paddingTop / 3,
                bottom: paddingTop * 0.5),
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
              'For Watchs!\n Comming soon. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 118, 118, 118),
                fontSize: fontTitleSize / 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
