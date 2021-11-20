import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController phoneCallController = new TextEditingController();

  /// TODO Direct Phone Call Function
  void makeDirectCall(String phone) {
    FlutterPhoneDirectCaller.callNumber(phone);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Make Phone Calls"),
          centerTitle: true,
          backgroundColor: Colors.teal[700],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  style: TextStyle(fontSize: 17.0, color: Colors.black),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone), labelText: "Phone Number"),
                  controller: phoneCallController,
                  validator: (val) {
                    return RegExp(
                      // "^(?:[+0]9)?[0-9]{10,12}",
                      "^[0-9]{4} [0-9]{7}",
                    ).hasMatch(val)
                        ? null
                        : 'Format XXXX XXXXXXX';
                  },
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// TODO Direct Call
                // ignore: deprecated_member_use
                FlatButton.icon(
                  onPressed: () => _formKey.currentState.validate()
                      ? makeDirectCall(phoneCallController.text)
                      : print("Valid Phone No Required!"),
                  color: Colors.teal[700],
                  icon: Icon(Icons.phone, color: Colors.white, size: 20.0),
                  label: Text(
                    "Direct Call",
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),

                /// TODO Indirect Call
                // ignore: deprecated_member_use
                FlatButton.icon(
                  onPressed: () {},
                  color: Colors.teal[700],
                  icon: Icon(Icons.phone_android,
                      color: Colors.white, size: 20.0),
                  label: Text(
                    "Indirect Call",
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
