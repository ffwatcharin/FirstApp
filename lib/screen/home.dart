import 'package:flutter/material.dart';
import 'package:myapp/screen/login.dart';
import 'package:myapp/screen/register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 209, 188),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Register/Login',
          style: TextStyle(
            fontFamily: 'Prompt',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 120, 25, 0),
        child: SingleChildScrollView(
          child: Column(children: [
            const Text(
              'Welcome to FisrtApp \n สมัครแอคกันก่อนนะค้าบบ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 110, 99)),
            ),
            const SizedBox(
              height: 25,
            ),
            Image.asset(
              'assets/images/crocodile.png',
              width: 200,
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegisterScreen();
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  'Create new account',
                  style: TextStyle(fontSize: 20, fontFamily: 'Prompt'),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 0, 59, 53)),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.login),
                label: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20, fontFamily: 'Prompt'),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 0, 59, 53)),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
