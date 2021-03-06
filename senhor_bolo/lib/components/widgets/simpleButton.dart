import 'package:flutter/material.dart';

Widget simpleButton (double width, double height, String btnText, VoidCallback onPressed, double radius, double fontSize, Color cor){
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
        onPressed: onPressed,
        child: Text(btnText),
        style: ElevatedButton.styleFrom(
          primary: cor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)
          ),
          textStyle: TextStyle(
              fontFamily: 'Raleway',
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.bold
          ),
        ),
    ),
  );
}

Widget simpleButtonIcon(double width, double height, String btnText, VoidCallback onPressed, double radius, double fontSize, Color cor, Icon btnIcon, FontWeight fontPeso){
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton.icon(
      onPressed: onPressed,
      icon: btnIcon,
      label: Text(btnText),
      style: ElevatedButton.styleFrom(
        primary: cor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius)
        ),
        textStyle: TextStyle(
            fontFamily: 'Raleway',
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: fontPeso,
        ),
      ),
    ),
  );
}

Widget simpleButtonIconeOnly(double width, double height, VoidCallback onPressed, double radius, double fontSize, Color cor, Icon btnIcon, FontWeight fontPeso){
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      child: btnIcon,
      style: ElevatedButton.styleFrom(
        primary: cor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius)
        ),
        textStyle: TextStyle(
          fontFamily: 'Raleway',
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: fontPeso,
        ),
      ),
    ),
  );
}
