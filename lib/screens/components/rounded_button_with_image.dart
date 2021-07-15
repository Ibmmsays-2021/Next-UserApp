import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final String text;
  final Function press;
  final String iconSrc;
  static const kPrimaryColor = Color(0xFF2c2750);
  final Color color, textColor;
  const RoundedButtonWithIcon({
    Key key,
    this.text,
    this.press,
    this.color,
    this.iconSrc,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: RaisedButton.icon(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: Color(0xFF2c2750),
          label: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          icon: SvgPicture.asset(
            iconSrc,
            height: 20,
            width: 20,
          ),
          onPressed: press,
        ),
      ),
    );
  }
}
