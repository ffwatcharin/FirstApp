import 'package:flutter/material.dart';

class MySelf extends StatelessWidget {
  const MySelf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 209, 188),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'ขอแนะนำตัวอีกรอบนะครับ ',
          style: TextStyle(
            fontFamily: 'Prompt',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
          child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/first.jpg'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'สวัสดีครับผมชื่อ เฟิส,เฟิร์ส(เขียนไงก็ได้ครับ555) ถ้าชื่อเต็มยศก็ วัชรินทร์ ดำทอง ตอนนี้ผมอยู่ปี 2 ครับผม ',
              style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 110, 99)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '''ต้องบอกก่อนเลยว่าตอนแรกไม่ได้จะเข้าคอมเลยครับ ตอนแรกผมจะเข้าถาปัตด้วยความที่ชอบการออกแบบ 
\nพอขึ้นปี1 ก็ยังไม่รู้ว่าผมจะไปสายไหนได้บ้าง จนพอผมเรียนไปเรื่อยๆครับได้ลองทำอะไรหลายๆอย่าง ผมเลยเริ่มรู้ตัวละครับว่า มันมีสายที่ผมโอเคกับมัน
ได้ซึ่งก็คือการที่ได้ออกแบบ UXUI ต่างๆ ซึ่งทำให้ผมรู้ตัวเลยว่าโอเคเราเริ่มสนใจด้าน Mobile App, WebDev ละ เพราะผมได้ออกแบบหน้า fontend ซึ่งผมก็แฮปปี้กับสิ่งที่ผมถนัดเลยครับบ ''',
              style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 110, 99)),
            ),
          ],
        ),
      )),
    );
  }
}
