import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liveasy_task/screens/mobile_number_screen.dart';
import 'package:liveasy_task/widgets/customized_button.dart';

class SelectLang extends StatefulWidget {
  const SelectLang({Key? key}) : super(key: key);

  @override
  State<SelectLang> createState() => _SelectLangState();
}

class _SelectLangState extends State<SelectLang> {

  String? dropdownvalue = "English";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg1.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(
                height: 56,
                width: 56,
                child: Image(image : AssetImage("assets/img.png"), fit: BoxFit.cover), // Image
              ),

              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Text(
                  "Please select your Language",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.07),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "You can change the language\nat any time.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(color: Color(0xff6A6C7B), fontSize: 14, letterSpacing: 0.07),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 15),
                child: Container(
                  height: 48,
                  width: 216,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: const Color(0xff2F3037)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0), //here include this to get padding
                    child: DropdownButton(

                      isExpanded: true,
                      underline: Container(),

                      alignment: Alignment.bottomCenter,


                      elevation: 0,
                      borderRadius: BorderRadius.circular(5 ),
                      value: dropdownvalue,
                      icon: const Icon(Icons.arrow_drop_down),

                      items: const [
                        DropdownMenuItem(value: "English", child: Text("English")),
                        DropdownMenuItem(value: "Hindi", child: Text("Hindi")),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: Color(0xff6A6C7B), fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),

              CustomizedButton(
                buttonText: "NEXT",
                width: 216,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const MobileNumber()));
                },
              ),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
