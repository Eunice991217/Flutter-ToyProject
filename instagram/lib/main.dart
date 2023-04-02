import 'package:flutter/material.dart'; // android icon
import 'package:flutter/cupertino.dart'; // ios icon

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

class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(key: key); // 부모 클래스(여기에선 StatelessWidget)에 Key 전달

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // appBar 상단바 추가
        leading: IconButton(
          // 왼쪽
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        // 여러개의 원소를 받을수있음 : actions
        actions: [
          // 오른쪽
          IconButton(
            icon: Icon(CupertinoIcons.paperplane,
                color: Colors.black), // 해당 아이콘을 쓰려면
            // import 'package:flutter/cupertino.dart'; 추가해야함.
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/logo.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
        children: [
          // 이미지
          Image.network(
            "https://cdn2.thecatapi.com/images/kat_7kqBi.png",
            height: 400,
            width: double.infinity,
            //  이미지의 비율을 유지하면서 고정된 폭과 높이에 맞추어 이미지를 적절히 잘라서 보여줌.
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(CupertinoIcons.heart, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
                onPressed: () {},
              ),
              Spacer(), // 자신이 커질수있는만큼 최대한 커지면서 공백을 만들어주는 위젯
              IconButton(
                icon: Icon(CupertinoIcons.bookmark, color: Colors.black),
                onPressed: () {},
              )
            ],
          ),
          // 좋아요
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "2 likes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // 설명
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "My cat is docile even when bathed. I put a duck on his head in the wick and he's staring at me. Isn't it so cute??",
            ),
          ),

          // 날짜
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "FEBURARY 6",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
