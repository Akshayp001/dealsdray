import 'package:dealsdray/src/common/utils/Snackbar.dart';
import 'package:dealsdray/src/homePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  String mobileNumber;
  OtpScreen({required this.mobileNumber});
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            const Image(
              image: AssetImage('assets/images/otp.png'),
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 15,
            ),
            Text("OTP Verification",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 33)),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Text(
                "We have sent an unique OTP number to your mobile +91-${widget.mobileNumber}",
                style: GoogleFonts.poppins(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildOtpBox(0),
                _buildOtpBox(1),
                _buildOtpBox(2),
                _buildOtpBox(3),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '11:00', // dynamic time will have to implement
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade700,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "SEND AGAIN",
                      style: GoogleFonts.poppins(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOtpBox(int index) {
    return SizedBox(
      width: 60,
      child: TextField(
        controller: _controllers[index],
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            if (_controllers
                .every((controller) => controller.text.isNotEmpty)) {
              _submitOtp();
            } else {
              FocusScope.of(context).nextFocus();
            }
          }
        },
        onTap: () {
          _controllers[index].clear();
        },
      ),
    );
  }

  void _submitOtp() {
    String otp = _controllers.map((controller) => controller.text).join();
    print(otp + " is otp");

    if (otp.length == 4) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    } else {
      CustomSnackbar.show(context, 'Validation unsuccessfull');
    }
  }

  void _resendOtp() {
    // resend otp logic will be here as api hasnt given with enough info i am not able to impleemnt it
    setState(() {
      _isLoading = true;
    });
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
      CustomSnackbar.show(context, 'Otp sent!');
    });
  }

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }
}
