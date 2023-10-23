import 'package:band_two_pro/res/component/custom_button.dart';
import 'package:band_two_pro/utils/color_rescource.dart';
import 'package:band_two_pro/utils/routes/route_name.dart';
import 'package:flutter/material.dart';

import '../../../res/component/custom_text_form_field.dart';

class BrandVerifyNumber extends StatefulWidget {
  const BrandVerifyNumber({Key? key}) : super(key: key);

  @override
  State<BrandVerifyNumber> createState() => _BrandVerifyNumberState();
}

class _BrandVerifyNumberState extends State<BrandVerifyNumber> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        height: size.height * 1,
        width: size.width * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.yellow,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset("assets/images/img_4.png"),
                Text("Hi,Welcome!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text("Please enter your registered mobile number"),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                child: Column(
                  children: [
                    // Phone Number Textformfield
                    CustomTextFormField(
                      height: size.height * 0.07,
                      width: size.width * 1,
                      keyboardType: TextInputType.phone,
                      title: "Mobile No",
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    // create account button
                    RoundButton(
                        width: size.width * 1,
                        height: size.height * 0.06,
                        onTap: (){
                          Navigator.pushNamed(context, RoutesName.brandOTPCode);
                        },
                        title: "Continue",
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorResource.primaryColor,
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
