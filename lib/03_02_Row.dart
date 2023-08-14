import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Widget을 좌우로 배치하기"),
          ),
          body: Body(),
        )),
  );
}



class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // Row 의 경후 좌우를 제어하며 크기는 infinity 이다. 이를 컨트롤 하기 위한 옵션
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,

      // Row 의 경우 상하는 크기가 딱 고정적(여유 공간지 존재 하지 않음), 상위 컨테이너에서 여유 공간을 지정해줘야 함
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 100,
          height: 80,
          color: Colors.red,
          child: Text('Container 1'),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.green,
          child: Text('Container 2'),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.blue,
          child: Text('Container 3'),
        ),
      ],
    );
  }
}