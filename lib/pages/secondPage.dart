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
  // 체크박스를 위한 변수
  String? _imagePath;
  //이미지 경로 변수
  Color _backgroundColor = Colors.black12;
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
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: 400,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(31, 20, 31, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              '추가할 동물 이름과 옵션을 선택하세요.',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 300,
                              height: 50,
                              child: TextField(
                                controller: nameController, //컨트롤러로 사용
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                decoration: const InputDecoration(
                                    hintText: '동물 이름을 입력하세요',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 113,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            '동물의 종을 선택하세요',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                              value: 0, // 해다이 라디오 인덱스의 값
                              groupValue: _radioValue, // 현재 선택된 값
                              onChanged: _radioChange
                              // 눌렀을 때 호출할 함수 현재 선택값을 해당 라디오 인덱스 값으로 바꿔준다
                              ),
                          const Text('양서류'),
                          Radio(
                              value: 1,
                              groupValue: _radioValue,
                              onChanged: _radioChange),
                          const Text('파충류'),
                          Radio(
                              value: 2,
                              groupValue: _radioValue,
                              onChanged: _radioChange),
                          const Text('포유류'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 113,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            '비행할 수 있는 동물이라면 체크하세요.',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
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
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: _backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
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
                              if (_backgroundColor == Colors.black12) {
                                _backgroundColor = Colors.amber;
                              } else {
                                _backgroundColor = Colors.black12;
                              }
                              if (_width0 == 80) {
                                _width0 = 60;
                              } else {
                                _width0 = 80;
                              }
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          child: Image.asset(
                            'repo/images/pig.png',
                            width: _width1,
                          ),
                          onTap: () {
                            _imagePath = 'repo/images/pig.png';
                            setState(() {
                              if (_backgroundColor == Colors.black12) {
                                _backgroundColor = Colors.amber;
                              } else {
                                _backgroundColor = Colors.black12;
                              }
                              if (_width1 == 80) {
                                _width1 = 60;
                              } else {
                                _width1 = 80;
                              }
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          child: Image.asset(
                            'repo/images/bee.png',
                            width: _width2,
                          ),
                          onTap: () {
                            _imagePath = 'repo/images/bee.png';
                            setState(() {
                              if (_backgroundColor == Colors.black12) {
                                _backgroundColor = Colors.amber;
                              } else {
                                _backgroundColor = Colors.black12;
                              }
                              if (_width2 == 80) {
                                _width2 = 60;
                              } else {
                                _width2 = 80;
                              }
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          child: Image.asset(
                            'repo/images/cat.png',
                            width: _width3,
                          ),
                          onTap: () {
                            _imagePath = 'repo/images/cat.png';
                            setState(() {
                              if (_backgroundColor == Colors.black12) {
                                _backgroundColor = Colors.amber;
                              } else {
                                _backgroundColor = Colors.black12;
                              }
                              if (_width3 == 80) {
                                _width3 = 60;
                              } else {
                                _width3 = 80;
                              }
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          child: Image.asset(
                            'repo/images/dog.png',
                            width: _width4,
                          ),
                          onTap: () {
                            _imagePath = 'repo/images/dog.png';
                            setState(() {
                              if (_backgroundColor == Colors.black12) {
                                _backgroundColor = Colors.amber;
                              } else {
                                _backgroundColor = Colors.black12;
                              }
                              if (_width4 == 80) {
                                _width4 = 60;
                              } else {
                                _width4 = 80;
                              }
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          child: Image.asset(
                            'repo/images/fox.png',
                            width: _width5,
                          ),
                          onTap: () {
                            _imagePath = 'repo/images/fox.png';
                            setState(() {
                              if (_backgroundColor == Colors.black12) {
                                _backgroundColor = Colors.amber;
                              } else {
                                _backgroundColor = Colors.black12;
                              }
                              if (_width5 == 80) {
                                _width5 = 60;
                              } else {
                                _width5 = 80;
                              }
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          child: Image.asset(
                            'repo/images/monkey.png',
                            width: _width6,
                          ),
                          onTap: () {
                            _imagePath = 'repo/images/monkey.png';
                            setState(() {
                              if (_backgroundColor == Colors.black12) {
                                _backgroundColor = Colors.amber;
                              } else {
                                _backgroundColor = Colors.black12;
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
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.blue;
                            }
                            return Colors.blueGrey; // 버튼이 눌리지 않았을 때는 기본 색상 사용
                          },
                        ),
                      ),
                      onPressed: () {
                        // 눌렀을 때
                        var animal = Animal(
                          // animalItem의 Animal리스트에 다음 형식으로 추가한다
                          animalName: nameController.value.text,
                          // 키보드로 입력된 값을 텍스트 형태로
                          kind: getKind(_radioValue!),
                          // getKind라는 함수에 의해 0,1,2에 맞는 텍스트를 반환
                          imagePath: _imagePath,
                          // 이미지 선택 시 초기화된 _imagePath를 사용
                          flyExist: flyExist,
                          // 체크박스에서 초기화된 flyExist를 사용
                        );
                        AlertDialog dialog = AlertDialog(
                          title: const Text('동물 추가하기'),
                          //알림창 띄움. 제목은 동물 추가하기
                          content: Text(
                            '이 동물은 ${animal.animalName}입니다.\n'
                            '또 동물의 종류는 ${animal.kind}입니다.\n 이 동물을 추가하시겠습니까?',
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          //content는 알림창의 내용을 다룬다.
                          //동물 이름과 종류를 화면에 내보인다.
                          actions: [
                            //actions는 배열 형태로 위젯을 가져온다.
                            ElevatedButton(
                              onPressed: () {
                                widget.list?.add(animal);
                                //이 버튼을 누르면 animal에 리스트 형태로 추가한다
                                Navigator.of(context).pop();
                                //창을 닫는다.
                              },
                              child: const Text('예'),
                              //버튼에 표시할 내용은 '예'이다.
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('아니요'),
                            ),
                          ],
                          //위에서는 두 개의 elevated 버튼을 가져왔다.
                        );

                        showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog);
                        // AlertDialog에서 대화창을 표시하며 모양과 위치를 정의한다.
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '동물 추가하기',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _radioChange(int? value) {
    setState(() {
      _radioValue = value!;
    });
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
