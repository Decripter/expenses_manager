import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double? logoSize;
  const LogoWidget({super.key, this.logoSize});

  @override
  Widget build(BuildContext context) {
    Color logoColor = const Color.fromARGB(255, 94, 92, 229);
    var size = MediaQuery.of(context).size;
    var widthTenPercent = size.width * 0.1;
    if (logoSize != null) {
      widthTenPercent = logoSize!;
    }

    double padding = widthTenPercent * 0.15;
    return Center(
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(padding),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(widthTenPercent)),
                    color: logoColor,
                  ),
                  height: widthTenPercent,
                  width: widthTenPercent,
                ),
              ),
              Container(
                height: widthTenPercent,
                width: widthTenPercent,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(widthTenPercent)),
                    color: logoColor),
              ),
            ],
          ),
          Container(
            height: widthTenPercent * 2 + padding,
            width: widthTenPercent,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(widthTenPercent),
                    topRight: Radius.circular(widthTenPercent)),
                color: logoColor),
          ),
        ],
      ),
    );
  }
}
