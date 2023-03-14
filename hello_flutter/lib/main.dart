import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // 화면에 보이는 영역
        appBar: AppBar(
          title: Text(
            "Hello Flutter",
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                    width: 81,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(labelText: "이메일"),
                ),
                TextField(
                  obscureText: true, // 비밀번호 안보이도록 조정
                  decoration: InputDecoration(labelText: "비밀번호"),
                ),
                //Container 위젯이 ElevatedButton 위젯을 감싸게됨.
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 24),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('로그인'))) // 익명함수
              ],
            ),
          ),
        ),
      ),
    );
  }
}
