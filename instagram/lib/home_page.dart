import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(key: key); // 부모 클래스(여기에선 StatelessWidget)에 Key 전달

  @override
  Widget build(BuildContext context) {
    // images 배열 (한번값을 넣으면 수정 안되도록 final)
    final List<String> images = [
      "https://cdn2.thecatapi.com/images/bi.jpg",
      "https://cdn2.thecatapi.com/images/63g.jpg",
      "https://cdn2.thecatapi.com/images/a3h.jpg",
      "https://cdn2.thecatapi.com/images/a9m.jpg",
      "https://cdn2.thecatapi.com/images/aph.jpg",
      "https://cdn2.thecatapi.com/images/1rd.jpg",
      "https://cdn2.thecatapi.com/images/805.gif",
    ];

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
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          String Image = images[index];
          return Feed(
            imageUrl: Image,
          );
        },
      ),
    );
  }
}
