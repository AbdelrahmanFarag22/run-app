import 'package:flutter/material.dart';
import 'package:run_app/view_model/utils/app_cololrs.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.color,
    this.myIcon,
    this.iconColor,
  });

  String hintText;
  Color color;
  IconData? myIcon;
  Color? iconColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width * .8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.textFieldColor,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: 'Lato', fontSize: 14, color: color),
          suffixIcon: Icon(myIcon),
          suffixIconColor: iconColor,
        ),
      ),
    );
  }
}
