import 'package:challenge1/register_success.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name = TextEditingController(text: "");
  TextEditingController mail = TextEditingController(text: "");
  TextEditingController phone = TextEditingController(text: "");
  TextEditingController pass = TextEditingController(text: "");
  TextEditingController conf_pass = TextEditingController(text: "");
  bool PV = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: kToolbarHeight * 0.1,
                  width: 2,
                ),
                Align(
                    alignment: Alignment(-0.9, 1),
                    child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(Icons.arrow_back))),
                Text(
                  "Let's Get Started!",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Create an account to something to get all features",
                  style: TextStyle(fontSize: 17, color: Colors.grey,fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  height: MediaQuery.of(context).size.height * 0.11,
                  child: TextFormField(
                    validator: (name) {
                      if (name!.isEmpty)
                        return " invalid name";
                      else
                        return null;
                    },
                    controller: name,
                    keyboardType: TextInputType.name,
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
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: 'Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  height: MediaQuery.of(context).size.height * 0.11,
                  child: TextFormField(
                    validator: (mail) {
                      if (mail!.isEmpty || !mail.contains("@"))
                        return " invalid mail";
                      else
                        return null;
                    },
                    controller: mail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 15),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Image.asset(
                            "assets/images/mail.png",
                            height: 45,
                            width: 40,
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: 'Mail',
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  height: MediaQuery.of(context).size.height * 0.11,
                  child: TextFormField(
                    validator: (phone) {
                      if (phone!.isEmpty)
                        return " invalid phone number";
                      else
                        return null;
                    },
                    controller: phone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 15),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          "assets/images/phone-call.png",
                          height: 45,
                          width: 40,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: 'Phone',
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  height: MediaQuery.of(context).size.height * 0.11,
                  child: TextFormField(
                    validator: (pass) {
                      if (pass!.isEmpty || pass.length < 8)
                        return " password is too short";
                      else
                        return null;
                    },
                    controller: pass,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        errorStyle: TextStyle(fontSize: 15),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/images/key.png",
                            height: 45,
                            width: 40,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
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
                        )),
                    obscureText: PV,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  height: MediaQuery.of(context).size.height * 0.11,
                  child: TextFormField(
                    validator: (passw) {
                      if (passw!=pass.text)
                        return " password mismatch";
                      else
                        return null;
                    },
                    controller: conf_pass,
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
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        hintText: ' Confirm Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                              !PV ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              PV = !PV;
                            });
                          },
                        )),
                    obscureText: PV,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => reg_success()));
                    }
                  },
                  child: Text(
                    "Create",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.3,
                        MediaQuery.of(context).size.height * 0.06),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RichText(
                    text: TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Login here",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pop();
                              },
                            style: TextStyle(color: Colors.blue, fontSize: 19),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
