import 'package:flutter/cupertino.dart';
import 'package:animalapp/animalItem.dart';
import 'package:flutter/material.dart';

class cupertinoSecondPage extends StatefulWidget {
  final List<Animal>? animalList;
  const cupertinoSecondPage({Key? key, required this.animalList})
      : super(key: key);
  //클래스의 key값을 부모 클래스로 전달하고, animalList의 값을 받아 이 클래스로 전해준다.

  @override
  State<cupertinoSecondPage> createState() => _cupertinoSecondPageState();
}

class _cupertinoSecondPageState extends State<cupertinoSecondPage> {
  TextEditingController? _textController;
  //텍스트 필드를 사용하기 위한 TextEditingController 선언
  int _kindChoice = 0;
  // 동물 종류를 위한 정수형 변수
  bool _flyExist = false;
  // 날 수 있는가를 위한 변수
  String? _imagePath;
  // 동물 이미지 주소 변수
  // ignore: prefer_final_fields
  Color _backgroundColor = Colors.white;
  // ignore: prefer_final_fields
  double unselectedWidth0 = 80;
  double unselectedWidth1 = 80;
  double unselectedWidth2 = 80;
  double unselectedWidth3 = 80;
  double unselectedWidth4 = 80;
  double unselectedWidth5 = 80;
  double unselectedWidth6 = 80;
  double unselectedWidth7 = 80;

  Map<int, Widget> segmentWidgets = {
    0: const SizedBox(
      width: 80,
      child: Text(
        '양서류',
        textAlign: TextAlign.center,
      ),
    ),
    1: const SizedBox(
      width: 80,
      child: Text(
        '포유류',
        textAlign: TextAlign.center,
      ),
    ),
    2: const SizedBox(
      width: 80,
      child: Text(
        '파충류',
        textAlign: TextAlign.center,
      ),
    ),
  };

  //Map int형 키와 Widght형 값을 쌍으로 연결 <int, Widget> 이름 형태로 만든다.
  // {}안에 정수 : 훤하는 Widget을 넣으면 된다.

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    //키보드로 입력받은 값을 저장할 변수 선언
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          '동물 추가',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '동물 이름',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: CupertinoTextField(
                          controller: _textController,
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          placeholder: '동물 이름을 입력하세요',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '동물 종류',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CupertinoSegmentedControl(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        groupValue: _kindChoice,
                        //현재 선택된 값은 동물 종류를 나타낼 때 쓰는 _kindChoice.
                        children: segmentWidgets,
                        // 위에서 만든 segmentWidgets를 불러옴
                        onValueChanged: (int value) {
                          setState(() {
                            _kindChoice = value;
                            //바뀐 값이 value에 들어오고 이를 현재 값인 _kindChoice에 넣음
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 5, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '비행 가능 여부',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          const Text('날개가 존재합니까?'),
                          const SizedBox(
                            width: 20,
                          ),
                          CupertinoSwitch(
                            //아이폰 스타일 스위치
                            value: _flyExist,
                            // 날수 있는지를 위한 변수 사용
                            onChanged: (value) {
                              setState(() {
                                _flyExist = value;
                                // value는 기본적으로 false;
                                // 스위치 상태에 따라 _flyExist에 적용
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '아이콘 선택',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        color: _backgroundColor,
                        child: SizedBox(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              GestureDetector(
                                child: Image.asset('repo/images/cow.png',
                                    width: unselectedWidth0),
                                onTap: () {
                                  _imagePath = 'repo/images/cow.png';
                                  setState(() {
                                    if (_backgroundColor == Colors.white &&
                                        unselectedWidth0 == 80) {
                                      _backgroundColor = Colors.blueAccent;
                                      unselectedWidth0 = 60;
                                    } else {
                                      _backgroundColor = Colors.white;
                                      unselectedWidth0 = 80;
                                    }
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Image.asset('repo/images/wolf.png',
                                    width: unselectedWidth7),
                                onTap: () {
                                  _imagePath = 'repo/images/wolf.png';
                                  setState(() {
                                    if (_backgroundColor == Colors.white &&
                                        unselectedWidth7 == 80) {
                                      _backgroundColor = Colors.blueAccent;
                                      unselectedWidth7 = 60;
                                    } else {
                                      _backgroundColor = Colors.white;
                                      unselectedWidth7 = 80;
                                    }
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Image.asset('repo/images/pig.png',
                                    width: unselectedWidth1),
                                onTap: () {
                                  _imagePath = 'repo/images/pig.png';
                                  setState(() {
                                    if (_backgroundColor == Colors.white &&
                                        unselectedWidth1 == 80) {
                                      _backgroundColor = Colors.blueAccent;
                                      unselectedWidth1 = 60;
                                    } else {
                                      _backgroundColor = Colors.white;
                                      unselectedWidth1 = 80;
                                    }
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Image.asset('repo/images/bee.png',
                                    width: unselectedWidth2),
                                onTap: () {
                                  _imagePath = 'repo/images/bee.png';
                                  setState(() {
                                    if (_backgroundColor == Colors.white &&
                                        unselectedWidth2 == 80) {
                                      _backgroundColor = Colors.blueAccent;
                                      unselectedWidth2 = 60;
                                    } else {
                                      _backgroundColor = Colors.white;
                                      unselectedWidth2 = 80;
                                    }
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Image.asset('repo/images/cat.png',
                                    width: unselectedWidth3),
                                onTap: () {
                                  _imagePath = 'repo/images/cat.png';
                                  setState(() {
                                    if (_backgroundColor == Colors.white &&
                                        unselectedWidth3 == 80) {
                                      _backgroundColor = Colors.blueAccent;
                                      unselectedWidth3 = 60;
                                    } else {
                                      _backgroundColor = Colors.white;
                                      unselectedWidth3 = 80;
                                    }
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Image.asset('repo/images/fox.png',
                                    width: unselectedWidth4),
                                onTap: () {
                                  _imagePath = 'repo/images/fox.png';
                                  setState(() {
                                    if (_backgroundColor == Colors.white &&
                                        unselectedWidth4 == 80) {
                                      _backgroundColor = Colors.blueAccent;
                                      unselectedWidth4 = 60;
                                    } else {
                                      _backgroundColor = Colors.white;
                                      unselectedWidth4 = 80;
                                    }
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Image.asset('repo/images/monkey.png',
                                    width: unselectedWidth5),
                                onTap: () {
                                  _imagePath = 'repo/images/monkey.png';
                                  setState(() {
                                    if (_backgroundColor == Colors.white &&
                                        unselectedWidth5 == 80) {
                                      _backgroundColor = Colors.blueAccent;
                                      unselectedWidth5 = 60;
                                    } else {
                                      _backgroundColor = Colors.white;
                                      unselectedWidth5 = 80;
                                    }
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Image.asset('repo/images/dog.png',
                                    width: unselectedWidth6),
                                onTap: () {
                                  _imagePath = 'repo/images/dog.png';
                                  setState(() {
                                    if (_backgroundColor == Colors.white &&
                                        unselectedWidth6 == 80) {
                                      _backgroundColor = Colors.blueAccent;
                                      unselectedWidth6 = 60;
                                    } else {
                                      _backgroundColor = Colors.white;
                                      unselectedWidth6 = 80;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: CupertinoButton(
                  child: const Text(
                    '동물 추가하기',
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {
                    widget.animalList?.add(Animal(
                      animalName: _textController?.value.text,
                      kind: getKind(_kindChoice),
                      imagePath: _imagePath,
                    ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  getKind(int radioValue) {
    switch (radioValue) {
      case 0:
        return "양서류";
      case 1:
        return "파충류";
      case 2:
        return "포유류";
    }
  }
}
