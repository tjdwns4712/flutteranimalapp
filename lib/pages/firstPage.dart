import 'package:animalapp/animalItem.dart';
import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
  final List<Animal>? list;
  // list는 동물 리스트를 받아온다
  const firstPage({Key? key, this.list}) : super(key: key);
  // list를 입력받을 생성자를 도입해 오류를 제거
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView.builder(
            itemBuilder: (context, position) {
              // position 순번, context 위젯의 위치를 담당
              return GestureDetector(
                //터치 이벤트를 처리해줌
                child: Card(
                  child: Row(
                    children: [
                      Image.asset(
                        list![position].imagePath!, // list의 position번 째 이미지의 주소
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain, // 박스에 꽉 차도록 표시하라
                      ),
                      Text(list![position]
                          .animalName!) //list에 있는 position번 째 동물의 이름을 가져와라
                    ],
                  ),
                ),
                onTap: () {
                  AlertDialog dialog = AlertDialog(
                    //dialog를 통해 알림창을 설정
                    content: Text(
                      // content는 안데 들어갈 내용을 적음
                      '이 동물은 ${list![position].kind}입니다.', // list의 position번 째 종류
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  );
                  showDialog(context: context, builder: (context) => dialog);
                  //showDialog 알림창을 띄우는 함수 dialog알림창을 띄우라는 뜻
                },
              );
            },
            itemCount: list!.length,
          ),
        ),
      ),
    );
  }
}
