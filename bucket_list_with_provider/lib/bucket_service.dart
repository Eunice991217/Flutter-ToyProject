import 'package:flutter/material.dart';

import 'main.dart';

/// Bucket 담당
class BucketService extends ChangeNotifier {
  // 변경된사항을 알려준다 (notifier)
  List<Bucket> bucketList = [
    Bucket('잠자기', false), // 더미(dummy) 데이터
  ];

  /// bucket 추가
  void createBucket(String job) {
    // create화면에서 추가하기 버튼을 누를때 호출할것
    bucketList.add(Bucket(job, false));

    notifyListeners(); // 갱신 = Consumer<BucketService>의 builder 부분만 새로고침
  }

  /// bucket 수정
  void updateBucket(Bucket bucket, int index) {
    // index에 해당되는 bucketList에 전달받은 bucket을 넣는 방식으로 update
    bucketList[index] = bucket;
    // 버킷의 상태가 변하는 경우 화면을 갱신하기 위해 notifyListeners()를 호출
    notifyListeners();
  }

  /// bucket 삭제
  void deleteBucket(int index) {
    bucketList.removeAt(index);
    notifyListeners();
  }
}
