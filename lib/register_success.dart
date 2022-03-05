import 'package:flutter/material.dart';

class reg_success extends StatefulWidget {
  const reg_success({Key? key}) : super(key: key);

  @override
  _reg_successState createState() => _reg_successState();
}

class _reg_successState extends State<reg_success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/check.png",scale: 6,),
        SizedBox(
          height: 15,
        ),
        Text(
          "Well Done !\n Register successfully",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),

      ],
    ),
    ),
    );
  }
}