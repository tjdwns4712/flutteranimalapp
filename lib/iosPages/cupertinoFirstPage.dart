import 'package:flutter/cupertino.dart';
import 'package:animalapp/animalItem.dart';

class cupertinoFirstPage extends StatelessWidget {
  final List<Animal> animalList;

  const cupertinoFirstPage({Key? key, required this.animalList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          '동물 리스트',
          style: TextStyle(fontSize: 20),
        ),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(15),
            height: 100,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      animalList[index].imagePath!,
                      fit: BoxFit.contain,
                      width: 80,
                      height: 68,
                    ),
                    Text(animalList[index].animalName!)
                  ],
                ),
                Container(
                  height: 2,
                  color: CupertinoColors.black,
                ),
              ],
            ),
          );
        },
        itemCount: animalList.length,
      ),
    );
  }
}
