import 'package:dealsdray/src/Authentication/screens/OtpScreen.dart';
import 'package:dealsdray/src/common/utils/Snackbar.dart';
import 'package:dealsdray/src/common/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int selectedIndex = 0;
  TextEditingController _phoneNumberController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        child: Column(
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
            FlutterToggleTab(
              width: width * 0.125,
              selectedBackgroundColors: [Colors.red.shade700, Colors.red],
              selectedTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              labels: const ['Phone', 'Email'],
              selectedLabelIndex: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              selectedIndex: selectedIndex,
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Glad to see you!",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 33)),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            selectedIndex == 0
                ? _buildPhoneAuthContent()
                : _buildEmailAuthContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailAuthContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "Please provide your email and password",
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: GoogleFonts.poppins(),
            ),
          ),
          SizedBox(
            height: 10,
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
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Refer Code',
              hintStyle: GoogleFonts.poppins(),
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            onTap: () {
              print("Working");
            },
            child: Text(
              "Login",
              style: GoogleFonts.poppins(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneAuthContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "Please provide your mobile number",
                  softWrap: true,
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: _phoneNumberController,
            decoration: InputDecoration(
              hintText: 'Phone',
              hintStyle: GoogleFonts.poppins(),
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            onTap: () {
              if (_phoneNumberController.text == '' ||
                  _phoneNumberController.text.length != 10) {
                CustomSnackbar.show(
                    context, 'Not Valid Phone Number Check Again!!');
                return;
              }
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    OtpScreen(mobileNumber: _phoneNumberController.text),
              ));
            },
            child: Text(
              "SEND CODE",
              style: GoogleFonts.poppins(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
