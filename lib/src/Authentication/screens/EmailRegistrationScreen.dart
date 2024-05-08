import 'package:dealsdray/src/common/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailRegistrationScreen extends StatefulWidget {
  const EmailRegistrationScreen({Key? key}) : super(key: key);

  @override
  _EmailRegistrationScreenState createState() =>
      _EmailRegistrationScreenState();
}

class _EmailRegistrationScreenState extends State<EmailRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                //logo
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 150,
                  width: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Let's Begin!",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 33)),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        "Please enter your credentials to proceed",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: GoogleFonts.poppins(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.poppins(),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.visibility),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Refer Code',
                    hintStyle: GoogleFonts.poppins(),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          Colors.red.shade800,
                          Colors.red.shade300
                        ])),
                    child: Center(child: Icon(Icons.arrow_forward_ios)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
