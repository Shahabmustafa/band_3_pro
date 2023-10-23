

import 'package:band_two_pro/utils/routes/route_name.dart';
import 'package:flutter/material.dart';

import '../../../res/component/custom_button.dart';
import '../../../res/component/custom_text_form_field.dart';

class BrandRegistration extends StatefulWidget {
  const BrandRegistration({Key? key}) : super(key: key);

  @override
  State<BrandRegistration> createState() => _BrandRegistrationState();
}

class _BrandRegistrationState extends State<BrandRegistration> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/img_4.png"),
              Text("Register Account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: size.height * 0.02,
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
                        title: "Phone",
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      // Email Textformfield
                      CustomTextFormField(
                        height: size.height * 0.07,
                        width: size.width * 1,
                        title: "Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      // Password Textformfield
                      CustomTextFormField(
                        height: size.height * 0.07,
                        width: size.width * 1,
                        title: "Password",
                        suffixIcons: Icons.visibility_outlined,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      // Create Account button
                      RoundButton(
                          width: size.width * 1,
                          height: size.height * 0.07,
                          onTap: (){
                            Navigator.pushNamed(context, RoutesName.brandVerifyNumber);
                          },
                          title: "Create Account",
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          )
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      // create account button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Flexible(child: Divider(color: Colors.black,thickness: 2,)),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            Text("or Continue with",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            Flexible(child: Divider(color: Colors.black,thickness: 2,)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/apple-logo.png",height: 50,width: 50,),
                          Image.asset("assets/images/google.png",height: 50,width: 50,),
                        ],
                      ),
                  ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
