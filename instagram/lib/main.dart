import 'package:flutter/material.dart'; // android icon
import 'package:flutter/cupertino.dart'; // ios icon

import 'home_page.dart'; // 다른 파일로 분리했으므로 그 파일 import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 앱을 시작할 때 MaterialApp으로 앱을 시작하고,
    return MaterialApp(
      // 디버그 표시 지우기
      debugShowCheckedModeBanner: false,
      // home이라는 이름지정 매개변수에 첫 번째 페이지 위젯을 만들어 전달
      // 첫번째 보여줄 위젯
      home: HomePage(), // 앱 시작시 보여주는 화면 : HomePage()
    );
  }
}
