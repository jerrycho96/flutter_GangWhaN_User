import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar defaultAppBar({String? title}) {
  return AppBar(
    title: Text('$title'),
    elevation: 0.5,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Get.back();
      },
    ),
  );
}

Widget textField({String? hintText}) {
  return TextField(
    // textAlign: TextAlign.center,
    maxLines: 1,
    decoration: InputDecoration(
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      hintText: hintText,
      border: textFieldBorderStyle(),
      enabledBorder: textFieldBorderStyle(),
      focusedBorder: textFieldBorderStyle(),
    ),
    cursorColor: Colors.black,
  );
}

OutlineInputBorder textFieldBorderStyle() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: Color(0xffE3E3E3),
    ),
  );
}

TextButton redBackgroundButton(
    {String? title, Function()? onPress, Icon? icon}) {
  if (icon != null) {
    return TextButton.icon(
      onPressed: onPress,
      label: Text(
        '$title',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Color(0xffE51A47),
        minimumSize: Size(double.infinity, 45),
      ),
      icon: icon,
    );
  } else {
    return TextButton(
      onPressed: onPress,
      child: Text(
        '$title',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Color(0xffE51A47),
        minimumSize: Size(double.infinity, 45),
      ),
    );
  }
}

GestureDetector textButton(
    {String? title, Function()? onPress, FontWeight? fontWeight}) {
  return GestureDetector(
    child: Text(
      '$title',
      style: TextStyle(
        fontWeight: fontWeight,
      ),
    ),
    onTap: onPress,
  );
}

Widget loginButton(
    {String? title,
    Function()? onPress,
    Color? backColor,
    Color? textColor,
    String? assets}) {
  return InkWell(
    onTap: onPress,
    child: Container(
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('$assets'),
          Text(
            '$title',
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Image.asset(
            '$assets',
            color: Colors.transparent,
          ),
        ],
      ),
    ),
  );
}

OutlinedButton redOutlineButton(
    {String? title,
    Function()? onPress,
    double width = 127,
    double height = 45}) {
  return OutlinedButton(
    onPressed: onPress,
    child: Text(
      '$title',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    style: OutlinedButton.styleFrom(
      minimumSize: Size(width, height),
      primary: Color(0xffE51A47),
      side: BorderSide(
        width: 1,
        color: Color(0xffE51A47),
      ),
    ),
  );
}

Container textAndTextField({String? text}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          '$text',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        textField(),
      ],
    ),
  );
}
