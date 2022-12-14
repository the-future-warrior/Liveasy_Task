import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liveasy_task/widgets/customized_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({Key? key}) : super(key: key);

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg2.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      height: 48,
                      width: 48,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Image(
                          image: AssetImage("assets/cancel.png"),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text(
                    "Please enter your mobile number",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.07),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "You’ll receive a 6 digit code\nto verify next.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(color: Color(0xff6A6C7B), fontSize: 14, letterSpacing: 0.07),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 20.0),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      counterText: "",
                      labelStyle: GoogleFonts.montserrat(color: const Color(0xff6A6C7B), fontSize: 16),
                      labelText: "Mobile Number",
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff000000)),
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    dropdownIconPosition: IconPosition.trailing,
                    flagsButtonPadding: const EdgeInsets.all(10.0),
                  ),
                ),

                CustomizedButton(
                  buttonText: "CONTINUE",
                  onPressed: () {},
                  width: double.infinity,
                ),

                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
