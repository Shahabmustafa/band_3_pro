import 'package:band_two_pro/res/component/custom_button.dart';
import 'package:band_two_pro/res/component/custom_text_form_field.dart';
import 'package:band_two_pro/utils/color_rescource.dart';
import 'package:band_two_pro/utils/routes/route_name.dart';
import 'package:flutter/material.dart';

class BrandAbout extends StatefulWidget {
  const BrandAbout({Key? key}) : super(key: key);

  @override
  State<BrandAbout> createState() => _BrandAboutState();
}

class _BrandAboutState extends State<BrandAbout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Your Brand",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
          ),
        ),
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
                SizedBox(
                  height: size.height * 0.03,
                ),
                Column(
                 children: [
                   CustomTextFormField(
                     title: "Name",
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   CustomTextFormField(
                     title: "Select genre",
                     suffixIcons: Icons.keyboard_arrow_down,
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   CustomTextFormField(
                     title: "Number of Musicians",
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   TextFormField(
                     maxLines: 10,
                     decoration: InputDecoration(
                       hintText: "Biography",
                       fillColor: Colors.white,
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                       filled: true,
                     ),
                   ),
                 ],
               ),
                SizedBox(
                  height: size.height * 0.22,
                ),
                RoundButton(
                    width: size.width * 1,
                    height: size.height * 0.07,
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.brandPhoneLink);
                    },
                    title: "Continue",
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorResource.primaryColor,
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
