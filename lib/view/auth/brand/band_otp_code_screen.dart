import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../../res/component/custom_button.dart';
import '../../../utils/color_rescource.dart';
import '../../../utils/routes/route_name.dart';

class OTPCodePage extends StatefulWidget {
  const OTPCodePage({Key? key}) : super(key: key);

  @override
  State<OTPCodePage> createState() => _OTPCodePageState();
}

class _OTPCodePageState extends State<OTPCodePage> {
  bool checkBox = false;

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset("assets/images/img_7.png"),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text("Verify your Mobile Number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: size.height * 0.008,
                ),
                Text("Please Enter the OTP sent to +919619020333"),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Form(
                  // key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Directionality(
                        // Specify direction if desired
                        textDirection: TextDirection.ltr,
                        child: Pinput(
                          // controller: pinController,
                          // focusNode: focusNode,
                          androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                          listenForMultipleSmsOnAndroid: true,
                          // defaultPinTheme: defaultPinTheme,
                          separatorBuilder: (index) => const SizedBox(width: 8),
                          validator: (value) {
                            return value == '222222' ? null : 'Pin is incorrect';
                          },
                          // onClipboardFound: (value) {
                          //   debugPrint('onClipboardFound: $value');
                          //   pinController.setText(value);
                          // },
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                          onCompleted: (pin) {
                            debugPrint('onCompleted: $pin');
                          },
                          onChanged: (value) {
                            debugPrint('onChanged: $value');
                          },
                          cursor: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 9),
                                width: 22,
                                height: 1,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          // focusedPinTheme: defaultPinTheme.copyWith(
                          //   decoration: defaultPinTheme.decoration!.copyWith(
                          //     borderRadius: BorderRadius.circular(8),
                          //     border: Border.all(color: focusedBorderColor),
                          //   ),
                          // ),
                          // submittedPinTheme: defaultPinTheme.copyWith(
                          //   decoration: defaultPinTheme.decoration!.copyWith(
                          //     color: fillColor,
                          //     borderRadius: BorderRadius.circular(19),
                          //     border: Border.all(color: focusedBorderColor),
                          //   ),
                          // ),
                          // errorPinTheme: defaultPinTheme.copyBorderWith(
                          //   border: Border.all(color: Colors.redAccent),
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.yellow,
                            value: checkBox,
                            onChanged: (value){
                              setState(() {
                                checkBox = value!;
                              });
                            },
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                  text: "I agree to the ",style: TextStyle(
                                color: Colors.black,
                              ),
                                  children: [
                                    TextSpan(
                                        text: " Terms & Conditions & Privacy Policy",style: TextStyle(
                                      color: Color(0xFFae2026),
                                    )
                                    ),
                                  ]
                              ),
                            ),
                          ),],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Didn't receive the OTP? ",style: TextStyle(fontWeight: FontWeight.w600),),
                          InkWell(
                            onTap: (){

                            },
                            child: Text(
                              " RESEND OTP",
                              style: TextStyle(
                                color: Color(0xFFae2026),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // create account button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RoundButton(
                width: size.width * 1,
                height: size.height * 0.06,
                onTap: (){
                  Navigator.pushNamed(context,RoutesName.brandAbout);
                },
                title: "Verify",
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorResource.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
