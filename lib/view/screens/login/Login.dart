import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:run_app/view/screens/login/components/custom_Text_Form_Field.dart';
import 'package:run_app/view/screens/login/components/sign_in_option_widget.dart';
import 'package:run_app/view_model/utils/AppAssets.dart';
import 'package:run_app/view_model/utils/app_cololrs.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: AppColors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * .04,
          ),
          const Center(
            child: Image(
              image: AssetImage(AppAssets.logo),
            ),
          ),
          SizedBox(
            height: size.height * .10,
          ),
          const Text(
            'Login',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 21,
              color: AppColors.white,
            ),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          CustomTextFormField(
            hintText: 'Dani@gmail.com',
            color: AppColors.white,
          ),
          SizedBox(
            height: size.height * .02,
          ),
          CustomTextFormField(
            hintText: 'Password',
            color: AppColors.gray,
            myIcon: Icons.visibility_off,
            iconColor: AppColors.purple,
          ),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.check_box,
                color: AppColors.purple,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  'Remember Me',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Text(
                'Forgot password ?',
                style: TextStyle(
                  color: AppColors.purple,
                ),
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
          SizedBox(
            height: size.height * .03,
          ),
          Container(
            width: size.width * .75,
            child: ElevatedButton(
              onPressed: () {},
              style:
                  ElevatedButton.styleFrom(backgroundColor: AppColors.purple),
              child: const Text(
                'Log In',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 21,
                  fontFamily: 'poppins',
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * .03,
          ),
          Row(
            children: [
              Container(
                width: size.width * .30,
                height: 1,
                color: AppColors.gray,
                margin: const EdgeInsetsDirectional.all(10),
              ),
              const Text(
                'Or continue with',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
              Container(
                width: size.width * .30,
                height: 1,
                color: AppColors.gray,
                margin: const EdgeInsetsDirectional.all(10),
              ),
            ],
          ),
          SizedBox(
            height: size.height * .02,
          ),
          GridView.count(crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SignInOptionWidget(image: AppAssets.google,),
            SignInOptionWidget(image: AppAssets.facebook,),
            SignInOptionWidget(image: AppAssets.twitter,),
          ],),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('New User?',style: TextStyle(color: AppColors.white),),
              Text(' Sign Up',style: TextStyle(color: AppColors.purple),),
            ],
          )
        ],
      ),
    );
  }
}

