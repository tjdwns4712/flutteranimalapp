import 'package:animalapp/pages/firstPage.dart';
import 'package:animalapp/pages/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import './animalItem.dart';

void main() {
  runApp(const tabApp());
}

class tabApp extends StatelessWidget {
  static const String _title = "tabApp";
  //
  const tabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: mainTabApp(),
    );
  }
}

class mainTabApp extends StatefulWidget {
  const mainTabApp({super.key});

  @override
  State<mainTabApp> createState() => _mainTabAppState();
}

class _mainTabAppState extends State<mainTabApp>
    with SingleTickerProviderStateMixin {
  //SingleTickerProviderStateMixin 이 클래스에서 에니메이션을 그릴 수 있도록 해준다
  TabController? controller; // 탭 이동을 위한 컨트롤러 선언
  List<Animal> animalList = List.empty(growable: true);
  // 처음에는 리스트에 빈 값으로 설정하고, 가변적으로 증가할 수 있도록 설정
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    // 2개의 위젯, vsync는 탭이동 시 콜백하는 함수 위치를 정하는 것

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
  }

  @override
  @SemanticsHintOverrides()
  void dispose() {
    controller!.dispose();
    super.dispose();
    //메모리 누수를 막기위해 위젯 상태관리 종료
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'AnimalApp',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          firstPage(list: animalList),
          const secondPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        labelColor: Colors.white,
        dividerColor: Colors.white,
        tabs: const <Tab>[
          Tab(
            icon: Icon(
              Icons.looks_one,
              color: Colors.blueGrey,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.looks_two,
              color: Colors.blueGrey,
            ),
          ),
        ],
        controller: controller,
      ),
    );
  }
}
