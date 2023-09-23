import 'package:flutter/material.dart';
import 'package:learnify/screen/auth_screen/otp.dart';
import 'package:lottie/lottie.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countrycode = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  @override
  void initState() {
    countrycode.text = '+91';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Log in',
          textAlign: TextAlign.center,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Lottie.asset('animation/1.json',
                  fit: BoxFit.cover, repeat: true, width: 150, height: 120),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Phone Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'We need to register your phone before getting started',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                      child: Text(
                        '|',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: TextField(
                        controller: phonenumber,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.justify,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '  Phone',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Myotp(
                        phone: phonenumber.text,
                      );
                    }));
                  },
                  child: Text('Send the code'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'By signing up,you agree with ours Terms'
                ' and conditions',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
