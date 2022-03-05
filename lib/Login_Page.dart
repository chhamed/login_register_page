import 'package:challenge1/Register%20Page.dart';
import 'package:challenge1/forget_password.dart';
import 'package:challenge1/login_success.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mail = TextEditingController(text: "");
  TextEditingController password = TextEditingController(text: "");
  bool PV = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.21,
                    child: Image.asset(
                      "assets/images/log.png",
                      fit: BoxFit.fill,
                    )),
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Log in to your existing account of something",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 15,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: TextFormField(
                        controller: mail,
                        keyboardType: TextInputType.emailAddress,
                        validator: (mail) {
                          if (mail!.isEmpty || !mail.contains("@"))
                            return " invalid mail";
                          else
                            return null;
                        },
                        decoration: InputDecoration(
                          errorStyle: TextStyle(fontSize: 15),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              "assets/images/user.png",
                              height: 45,
                              width: 40,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: 'Mail',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: TextFormField(
                        validator: (password) {
                          if (password!.isEmpty || password.length < 8)
                            return " password incorrect";
                          else
                            return null;
                        },
                        controller: password,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(fontSize: 15),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Image.asset(
                              "assets/images/key.png",
                              height: 45,
                              width: 40,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                                !PV ? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                PV = !PV;
                              });
                            },
                          ),
                        ),
                        obscureText: PV,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment(0.8, 0.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => forget_password()));
                        },
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => log_sucess()));
                        }
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(1, 72, 164, 1),
                        fixedSize: Size(
                            MediaQuery.of(context).size.width * 0.35,
                            MediaQuery.of(context).size.height * 0.07),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text("Or connect using",
                        style: TextStyle(fontSize: 18, color: Colors.grey)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          icon: Icon(
                            Icons.facebook,
                            size: 20.0,
                          ),
                          label: Text('Facebook'),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(56, 92, 142, 1),
                            fixedSize: Size(
                                MediaQuery.of(context).size.width * 0.4,
                                MediaQuery.of(context).size.height * 0.08),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          icon: Image.asset(
                            "assets/images/google.png",
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                          label: Text('Google'),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            fixedSize: Size(
                                MediaQuery.of(context).size.width * 0.4,
                                MediaQuery.of(context).size.height * 0.08),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: RichText(
                        text: TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Sign Up",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => Register()));
                                  },
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 18),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
