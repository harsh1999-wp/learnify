// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';
import 'package:quickalert/quickalert.dart';
import 'package:quickalert/widgets/quickalert_buttons.dart';

class Myotp extends StatelessWidget {
  String phone;
  Myotp({
    Key? key,
    this.phone = '',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(0, 6, 11, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(0, 116, 35, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'OTP Verify',
          textAlign: TextAlign.center,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              width: 10,
            ),
            Lottie.asset('animation/1.json',
                fit: BoxFit.cover, repeat: true, width: 150, height: 120),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'OTP Send to',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '+91' + phone,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Pinput(
              keyboardType: TextInputType.number,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              //pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      QuickAlert.show(
                          context: context,
                          type: QuickAlertType.success,
                          text: 'Your details has been submitted');
                    },
                    child: Text('Verify the code'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ))),
            SizedBox(
              height: 45,
            ),
            Text(
              'By signing up,you agree with ours Terms'
              ' and conditions',
              style: TextStyle(color: Colors.grey),
            ),
          ]),
        ),
      ),
    );
  }
}
