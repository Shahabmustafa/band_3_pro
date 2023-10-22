import 'package:flutter/material.dart';
import 'package:quick_technology/utils/color_resource.dart';

class RoundButton extends StatelessWidget {
  RoundButton({Key? key,
    required this.width,
    required this.height,
    required this.onTap,
    required this.title,
    required this.decoration
  }) : super(key: key);
  String title;
  VoidCallback onTap;
  double height;
  double width;
  Decoration decoration;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: decoration,
        child: Center(child: Text(title,style: TextStyle(color: ColorResource.whiteColor,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
