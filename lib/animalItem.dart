class Animal {
  String? imagePath;
  //이미지 경로
  String? animalName;
  //동물 이름
  String? kind;
  //동물 종류
  bool? flyExist = false;
  // 비행가능 여부

  Animal({
    required this.animalName,
    required this.kind,
    required this.imagePath,
    this.flyExist,
  });
}
