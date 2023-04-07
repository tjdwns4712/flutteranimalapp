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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  ],
                ),
              ),
              ElevatedButton(
                child: const Text('동물 추가하기'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  _radioChange(int? value) {
    setState(() {
      _radioValue = value;
    });
  }
}
