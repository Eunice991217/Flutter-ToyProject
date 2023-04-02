import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({
    // 생성자 호출할때
    Key? key,
    // 이미지 호출 (imageUrl을 필수로 받도록 required로 선언)
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl; // 이미지를 담을 변수

  @override
  State<Feed> createState() => _FeedState();
}

// 이름이 언더바(_)로 시작하면 private 함수임 (외부에서 접근이 안됨)
class _FeedState extends State<Feed> {
  // 좋아요 여부
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
      children: [
        // 이미지
        Image.network(
          widget.imageUrl, // 10번째 줄의 imageUrl 가져오기
          height: 400,
          width: double.infinity,
          //  이미지의 비율을 유지하면서 고정된 폭과 높이에 맞추어 이미지를 적절히 잘라서 보여줌.
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.heart,
                // 3항 연산자 : true일때 pink 색 넣기
                color: isFavorite ? Colors.pink : Colors.black,
              ),
              // 해당 아이콘을 누르면
              onPressed: () {
                // 화면 갱신해라 : setState (build함수가 다시 실행됨)
                setState(() {
                  // toggle
                  isFavorite = !isFavorite;
                });
              },
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
    );
  }
}
