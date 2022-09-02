import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? iconImage;
  final String buttonText;
  final Color textColor;
  final Color buttonColor;

  const ButtonWidget({
    super.key,
    this.iconImage,
    required this.buttonText,
    required this.textColor,
    required this.buttonColor,
  });
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double buttonSize = 40;
    if (size.height * 0.1 < 40) {
      buttonSize = size.height * 0.1;
    }
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14),
      child: Container(
        height: buttonSize,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconImage != null) //
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  iconImage!,
                  fit: BoxFit.scaleDown,
                  filterQuality: FilterQuality.low,
                ),
              ),
            Text(buttonText, style: TextStyle(color: textColor)),
          ],
        ),
      ),
    );
  }
}
