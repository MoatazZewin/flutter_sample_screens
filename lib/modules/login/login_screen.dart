import 'package:first_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();

  var passController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }
  bool scured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  defaultTextFormField(
                      controller: emailController
                      , type: TextInputType.emailAddress,
                      label: "Email",
                      icon: Icons.email,
                      validotor: (value)
                       {
                         if(value!.isEmpty)
                           {
                             return "please enter the email";
                           }
                         return null;
                       }),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextFormField(
                      controller: passController,
                      type: TextInputType.visiblePassword,
                      label: "Password",
                      obscure: scured,
                      suffixIcon: scured? Icons.visibility:Icons.visibility_off,
                      onbressed: (){
                        setState(() {
                          scured = !scured;
                        });

                      },
                      icon: Icons.lock,
                      validotor: (value) {
                        if (value!.isEmpty) {
                          return "please enter the password";
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                      text: "login",
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(emailController.text);
                          print(passController.text);
                        }
                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don\'t hava an account? "),
                      TextButton(
                        onPressed: () {
                          print("please register");
                        },
                        child: Text("Register Now"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
