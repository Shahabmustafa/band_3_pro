import 'package:band_two_pro/res/component/custom_button.dart';
import 'package:band_two_pro/res/component/custom_text_form_field.dart';
import 'package:band_two_pro/utils/color_rescource.dart';
import 'package:flutter/material.dart';

class BrandPhoneLink extends StatefulWidget {
  const BrandPhoneLink({Key? key}) : super(key: key);

  @override
  State<BrandPhoneLink> createState() => _BrandPhoneLinkState();
}

class _BrandPhoneLinkState extends State<BrandPhoneLink> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo/Links"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image.asset("assets/images/img_8.png"),
                CustomTextFormField(
                    title: "Link to video",
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                CustomTextFormField(
                    title: "Website",
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                CustomTextFormField(
                    title: "Spotify",
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                CustomTextFormField(
                    title: "BandCamp",
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                RoundButton(
                    width: size.width * 1,
                    height: size.height * 0.07,
                    onTap: (){

                    },
                    title: "Continue",
                    decoration: BoxDecoration(
                      color: ColorResource.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
