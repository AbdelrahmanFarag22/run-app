import 'package:flutter/material.dart';
import 'package:run_app/view_model/utils/AppAssets.dart';
import 'package:run_app/view_model/utils/app_cololrs.dart';

class SignInOptionWidget extends StatelessWidget {
  SignInOptionWidget({super.key,required this.image});
  String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .28,
      height: size.height * .05,
      margin: const EdgeInsetsDirectional.all(15),
      decoration: BoxDecoration(
        color: AppColors.textFieldColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(image),
    );
  }
}
