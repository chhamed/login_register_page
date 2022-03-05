import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class log_sucess extends StatefulWidget {
  const log_sucess({Key? key}) : super(key: key);

  @override
  _log_sucessState createState() => _log_sucessState();
}

class _log_sucessState extends State<log_sucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/check.png",scale: 6,),
            SizedBox(
              height: 15,
            ),
            Text(
              "Well Done !\n login successfully",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),

          ],
        ),
      ),
    );
  }
}
