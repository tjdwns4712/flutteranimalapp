import 'package:animalapp/animalItem.dart';
import 'package:flutter/material.dart';

class secondPage extends StatefulWidget {
  final List<Animal>? list;
  const secondPage({Key? key, @required this.list}) : super(key: key);
  // required를 통해 필수 입력으로 지정

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  final nameController = TextEditingController();
  // 수정을 위한 변수
  int? _radioValue = 0;
  //radio 입력 시 순번을 위한 변수
  bool? flyExist = false;
  // 페크박스를 위한 변수
  String? _imagePath;
  //이미지 경로 변수
  Color _backgroundColor = Colors.white;
  //가시적인 선택을 드러내기 위한 색 변수
  double? _width0 = 80;
  double? _width1 = 80;
  double? _width2 = 80;
  double? _width3 = 80;
  double? _width4 = 80;
  double? _width5 = 80;
  double? _width6 = 80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController, //컨트롤러로 사용
                keyboardType: TextInputType.text,
                maxLines: 1,
              ),
              Row(
                children: [
                  Radio(
                    value: 0, // 해다이 라디오 인덱스의 값
                    groupValue: _radioValue, // 현재 선택된 값
                    onChanged:
                        _radioChange, // 눌렀을 때 호출할 함수 현재 선택값을 해당 라디오 인덱스 값으로 바꿔준다
                  ),
                  const Text('양서류'),
                  Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: _radioChange,
                  ),
                  const Text('파충류'),
                  Radio(
                    value: 2,
                    groupValue: _radioValue,
                    onChanged: _radioChange,
                  ),
                  const Text('포유류'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: flyExist, // 디폴트는 false로
                    onChanged: (bool? check) {
                      //CheckBox에서 bool은 체크면 true, 아니면 false를 반환한다.
                      setState(() {
                        flyExist = check;
                      });
                    },
                  ),
                ],
              ),
              Container(
                color: _backgroundColor,
                child: SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'repo/images/cow.png',
                          width: _width0,
                        ), // 너비 80의 소 사진을 가져와라
                        onTap: () {
                          _imagePath = 'repo/images/cow.png';
                          // 누르면 경로를 바꾼다
                          setState(() {
                            if (_backgroundColor == Colors.white) {
                              _backgroundColor = Colors.amber;
                            } else {
                              _backgroundColor = Colors.white;
                            }
                            if (_width0 == 80) {
                              _width0 = 60;
                            } else {
                              _width0 = 80;
                            }
                          });
                        },
                      ),
                      GestureDetector(
                        child: Image.asset(
                          'repo/images/pig.png',
                          width: _width1,
                        ),
                        onTap: () {
                          _imagePath = 'repo/images/pig.png';
                          setState(() {
                            if (_backgroundColor == Colors.white) {
                              _backgroundColor = Colors.amber;
                            } else {
                              _backgroundColor = Colors.white;
                            }
                            if (_width1 == 80) {
                              _width1 = 60;
                            } else {
                              _width1 = 80;
                            }
                          });
                        },
                      ),
                      GestureDetector(
                        child: Image.asset(
                          'repo/images/bee.png',
                          width: _width2,
                        ),
                        onTap: () {
                          _imagePath = 'repo/images/bee.png';
                          setState(() {
                            if (_backgroundColor == Colors.white) {
                              _backgroundColor = Colors.amber;
                            } else {
                              _backgroundColor = Colors.white;
                            }
                            if (_width2 == 80) {
                              _width2 = 60;
                            } else {
                              _width2 = 80;
                            }
                          });
                        },
                      ),
                      GestureDetector(
                        child: Image.asset(
                          'repo/images/cat.png',
                          width: _width3,
                        ),
                        onTap: () {
                          _imagePath = 'repo/images/cat.png';
                          setState(() {
                            if (_backgroundColor == Colors.white) {
                              _backgroundColor = Colors.amber;
                            } else {
                              _backgroundColor = Colors.white;
                            }
                            if (_width3 == 80) {
                              _width3 = 60;
                            } else {
                              _width3 = 80;
                            }
                          });
                        },
                      ),
                      GestureDetector(
                        child: Image.asset(
                          'repo/images/dog.png',
                          width: _width4,
                        ),
                        onTap: () {
                          _imagePath = 'repo/images/dog.png';
                          setState(() {
                            if (_backgroundColor == Colors.white) {
                              _backgroundColor = Colors.amber;
                            } else {
                              _backgroundColor = Colors.white;
                            }
                            if (_width4 == 80) {
                              _width4 = 60;
                            } else {
                              _width4 = 80;
                            }
                          });
                        },
                      ),
                      GestureDetector(
                        child: Image.asset(
                          'repo/images/fox.png',
                          width: _width5,
                        ),
                        onTap: () {
                          _imagePath = 'repo/images/dog.png';
                          setState(() {
                            if (_backgroundColor == Colors.white) {
                              _backgroundColor = Colors.amber;
                            } else {
                              _backgroundColor = Colors.white;
                            }
                            if (_width5 == 80) {
                              _width5 = 60;
                            } else {
                              _width5 = 80;
                            }
                          });
                        },
                      ),
                      GestureDetector(
                        child: Image.asset(
                          'repo/images/monkey.png',
                          width: _width6,
                        ),
                        onTap: () {
                          _imagePath = 'repo/images/dog.png';
                          setState(() {
                            if (_backgroundColor == Colors.white) {
                              _backgroundColor = Colors.amber;
                            } else {
                              _backgroundColor = Colors.white;
                            }
                            if (_width6 == 80) {
                              _width6 = 60;
                            } else {
                              _width6 = 80;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                child: const Text('동물 추가하기'), // 버튼 제목은 동물 추가하기
                onPressed: () {
                  // 눌렀을 때
                  var animal = Animal(
                    // animalItem의 Animal리스트에 다음 형식으로 추가한다
                    animalName: nameController.value.text,
                    // 키보드로 입력된 값을 텍스트 형태로
                    kind: getKind(_radioValue),
                    // getKind라는 함수에 의해 0,1,2에 맞는 텍스트를 반환
                    imagePath: _imagePath,
                    // 이미지 선택 시 초기화된 _imagePath를 사용
                    flyExist: flyExist,
                    // 체크박스에서 초기화된 flyExist를 사용
                  );
                  AlertDialog dialog = AlertDialog(
                    title: const Text('동물 추가하기'),
                    //알림창 띄움. 내용은 동물 추가하기
                    content: Text(
                      '이 동물은 ${animal.animalName}입니다.\n'
                      '또 동물의 종류는 ${animal.kind}입니다.\n 이 동물을 추가하시겠습니까?',
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          widget.list?.add(animal);
                          Navigator.of(context).pop;
                        },
                        child: const Text('예'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop;
                        },
                        child: const Text('아니요'),
                      ),
                    ],
                  );

                  showDialog(
                      context: context,
                      builder: (BuildContext context) => dialog);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  getKind(int? radioValue) {
    switch (radioValue) {
      case 0:
        return "양서류";
      case 1:
        return "파충류";
      case 2:
        return "포유류";
    }
  }

  _radioChange(int? value) {
    setState(() {
      _radioValue = value;
    });
  }
}
