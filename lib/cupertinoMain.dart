import 'package:animalapp/iosPages/cupertinoFirstPage.dart';
import 'package:animalapp/iosPages/cupertinoSecondPage.dart';
import 'package:flutter/cupertino.dart';
import 'animalItem.dart';

class cupertionMain extends StatefulWidget {
  const cupertionMain({super.key});

  @override
  State<cupertionMain> createState() => _cupertionMainState();
}

class _cupertionMainState extends State<cupertionMain> {
  CupertinoTabBar? tabBar;
  List<Animal> animalList = List.empty(growable: true);
  //animalItem의 Animla리스트를 가져오고 내용은 초기화, 가변길이를 사용함.

  //1. 탭바 변수정의
  //2. initState에 페이지 정의
  //3. cupertinoScaffold 작성

  @override
  void initState() {
    super.initState();
    tabBar = CupertinoTabBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
        //쿠퍼티노 탭바 첫 번째 페이지에 들어갈 아이콘 추가
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
        //쿠퍼티노 탭바 두 번째 페이지에 들어갈 아이콘 추가
      ],
    );
    animalList.add(
        Animal(animalName: "벌", kind: "곤충", imagePath: "repo/images/bee.png"));
    animalList.add(Animal(
        animalName: "고양이", kind: "포유류", imagePath: "repo/images/cat.png"));
    animalList.add(Animal(
        animalName: "젖소", kind: "포유류", imagePath: "repo/images/cow.png"));
    animalList.add(Animal(
        animalName: "강아지", kind: "포유류", imagePath: "repo/images/dog.png"));
    animalList.add(Animal(
        animalName: "여우", kind: "포유류", imagePath: "repo/images/fox.png"));
    animalList.add(Animal(
        animalName: "원숭이", kind: "영장류", imagePath: "repo/images/monkey.png"));
    animalList.add(Animal(
        animalName: "돼지", kind: "포유류", imagePath: "repo/images/pig.png"));
    animalList.add(Animal(
        animalName: "늑대", kind: "포유류", imagePath: "repo/images/wolf.png"));
    //animalList에 값을 추가함
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      // 머티리얼에서는 materialapp을 반환 ios스타일에서는 cupertion 스타일 반환
      home: CupertinoTabScaffold(
          tabBar: tabBar!,
          tabBuilder: (context, value) {
            if (value == 0) {
              return cupertinoFirstPage(
                animalList: animalList,
              );
            } else {
              return cupertinoSecondPage(
                animalList: animalList,
              );
            }
          }),
    );
  }
}
