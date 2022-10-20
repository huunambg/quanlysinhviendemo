import 'package:flutter/material.dart';
import '../data.dart';

class Thongke extends StatelessWidget {
  const Thongke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tk();
  }
}

class tk extends StatefulWidget {
  const tk({Key? key}) : super(key: key);

  @override
  State<tk> createState() => _tkState();
}

class _tkState extends State<tk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Tổng số sinh viên: ${dulieu.length}',
              style: TextStyle(fontSize: 25),
            ),
            ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: dulieu.length,
                itemBuilder: ((context, index) {
                  final dl = dulieu[index];
                  return ListTile(
                    title: Text("${dl.name}"),
                    subtitle: Text("Mã sv: ${dl.masv}"),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
