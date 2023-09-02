import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screen/about.dart';
import 'package:myapp/screen/home.dart';
import 'package:myapp/screen/myself.dart';

class WelcomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 209, 188),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'First Application 😎',
          style: TextStyle(
            fontFamily: 'Prompt',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 35, 25, 0),
        child: Column(
          children: [
            const Text(
              'สวัสดีครับผมชื่อ เฟิส ครับพี่ๆ เอาจริงๆแล้วผมก็ไม่รู้จะทำแอปไรขึ้นมา ผมเลยลองทำแอปที่เป็นแอปเกี่ยวกับตัวผมเองเลยละกันครับ',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Prompt',
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 0, 110, 99)),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'ลองเล่นๆแอปนี้ดูครับเผื่อจะได้รู้จักตัวตนของผมมากขึ้น  .  .  😉🙏',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Prompt',
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 0, 110, 99)),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/Bart_Simpson_200px.png',
              width: 190,
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 0, 209, 188),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 230,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Menu : 💻',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Prompt',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '👋🏻 My E-mail : ${auth.currentUser?.email ?? 'No email available'}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Prompt'),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text(
                '-> Introduce Myself <-',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Prompt',
                  color: Color.fromARGB(255, 0, 110, 99),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MySelf();
                    },
                  ),
                );
              },
              tileColor: const Color.fromARGB(146, 0, 236, 212),
              contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.teal),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text(
                '-> About <-',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Prompt',
                  color: Color.fromARGB(255, 0, 110, 99),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const About();
                    },
                  ),
                );
              },
              tileColor: const Color.fromARGB(146, 0, 236, 212),
              contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.teal),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text(
                '-> Log Out <-',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Prompt',
                  color: Color.fromARGB(255, 0, 110, 99),
                ),
              ),
              onTap: () {
                auth.signOut().then(
                  (value) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const HomeScreen();
                        },
                      ),
                    );
                  },
                );
              },
              tileColor: const Color.fromARGB(146, 0, 236, 212),
              contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.teal),
              ),
            )
          ],
        ),
      ),
    );
  }
}
