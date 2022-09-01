import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var area = size.width * 0.1;
    //40.0;
    double padding = area * 0.15;
    return Center(
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(padding),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(area)),
                    color: const Color.fromARGB(255, 94, 92, 229),
                  ),
                  height: area,
                  width: area,
                ),
              ),
              Container(
                height: area,
                width: area,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(area)),
                  color: const Color.fromARGB(255, 94, 92, 229),
                ),
              ),
            ],
          ),
          Container(
            height: area * 2 + padding,
            width: area,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(area),
                  topRight: Radius.circular(area)),
              color: const Color.fromARGB(255, 94, 92, 229),
            ),
          ),
        ],
      ),
    );
  }
}
