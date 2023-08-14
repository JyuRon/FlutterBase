import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Study to Container"),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // 해당 옵션 사용시 color 옵션과 동시에 사용이 불가하다
        decoration: BoxDecoration(
          color: Color(0xFFAB91FF),
          border: Border.all(color: Colors.red, width: 50, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3), offset: Offset(100, 100), blurRadius: 10, spreadRadius: 10),
            BoxShadow(color: Colors.blue.withOpacity(0.3), offset: Offset(-6, -6), blurRadius: 10, spreadRadius: 10),
          ]
        ),
        // 내부 간격
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        // 외부 간격
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 100),
        width: 300,
        height: 300,
        child: Center(
          child: Container(
              color: Colors.yellow,
              child: Text(
                  'Hello Container Hello ContainerHello ContainerHello ContainerHello ContainerHello ContainerHello Container')),
        ),
      ),
    );
  }
}
