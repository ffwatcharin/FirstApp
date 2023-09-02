import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:myapp/screen/welcome.dart';

import '../model/profile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final scaffoldKey = GlobalKey<ScaffoldState>();
  //obj profile
  Profile profile = Profile(email: '', password: '');

  //obj firebase
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
              body: Center(
                child: Text('${snapshot.error}'),
              ),
            );
          }
          //check not error -> show register screen
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              backgroundColor: const Color.fromARGB(255, 0, 209, 188),
              appBar: AppBar(
                backgroundColor: Colors.teal,
                title: const Text('Login'),
              ),
              body: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('E-mail :',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Prompt',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 110, 99))),
                          TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Please enter your E-mail.'),
                              EmailValidator(errorText: 'Invalid email format')
                            ]),
                            keyboardType: TextInputType.emailAddress,
                            //check data save
                            onSaved: (String? email) {
                              profile.email = email!;
                            },
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text('Password :',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Prompt',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 110, 99))),
                          TextFormField(
                            obscureText: true,
                            validator: RequiredValidator(
                                errorText: 'Please enter your password.'),
                            onSaved: (String? password) {
                              profile.password = password!;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                //check form save
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  //try create user
                                  try {
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: profile.email,
                                            password: profile.password)
                                        .then((value) {
                                      formKey.currentState!.reset();
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context) {
                                        return WelcomeScreen();
                                      }));
                                    });
                                    // if error
                                  } on FirebaseAuthException catch (e) {
                                    Fluttertoast.showToast(
                                      msg: e.message ?? "Error",
                                      gravity: ToastGravity.BOTTOM,
                                    );
                                  }
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color.fromARGB(255, 0, 59, 53)),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Prompt',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
