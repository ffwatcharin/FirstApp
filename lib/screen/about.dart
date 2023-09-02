import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 209, 188),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'ทำไมผมทำแอปนี้ขึ้นมา ?',
          style: TextStyle(
            fontFamily: 'Prompt',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              '''เหตุผลที่ทำมาก็อยากให้พี่ๆได้รู้จักกับผมครับ 
เลยทำเป็นแอปเกี่ยวกับตัวผมเองขึ้นมา ซึ่งนี่ก้เป็นแอปที่สองที่ผมได้ลองทำจริงๆ 
\nถามว่าทำไมต้องมี Login/Register ผมอยากลองทำเฉยๆครับ55555 

อยากลองเชื่อม database ว่าทำงานยังไง พอได้ดูคลิปสอนก็พอเข้าใจในคอนเซ็ปบ้าง ซึ่งตอนนี้ผมก็ยังเขียน flutter ไม่เซียนมากอาจจะทำแบบไม่ค่อยสวย ระบบต่างๆอาจจะยังไม่ดี 

เอาจริงๆตัวผมเองก็ยังไม่พอใจ บางเครื่องมือก็ยังใช้ไม่ค่อยเป็น เลยทำออกมาได้ประมาณนี้ครับ 

🙏 ขอบคุณพี่ๆทุกคนเลยครับที่มา จัดเทรนขึ้นมา 
ถ้าพี่ๆอ่านจบก็ขอบคุณมากๆเลยครับหวังว่าพี่จะรู้จักตัวผมมากขึ้นนะครับ Thank you krub พี่พี่
''',
              style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 110, 99)),
            )
          ],
        ),
      )),
    );
  }
}
