import 'package:flutter/material.dart';
import '../class.dart';

class Lopx extends StatelessWidget {
  final K19 dd;
  const Lopx({Key? key, required this.dd}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 234, 223, 187),
          appBar: AppBar(
            title: Text("CNTTK19A"),
            leading: IconButton(
              icon: Icon(Icons.keyboard_return),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(fontSize: 30),
                ),
                Container(
                  height: 420,
                  width: 380,
                  padding: EdgeInsets.all(10),
                  child: dd.img == '' || dd.img == null
                      ? Text(
                          "Chưa Có ảnh",
                          style: TextStyle(fontSize: 25),
                        )
                      : Image.network("${dd.img}"),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.orange.withOpacity(0.8),
                        Colors.grey
                      ]),
                      borderRadius: BorderRadius.circular(40)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "${dd.name}",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Mã SV: ${dd.masv}"),
                SizedBox(
                  height: 5,
                ),
                Text("Ngày sinh :${dd.ngaysinh}"),
                SizedBox(
                  height: 5,
                ),
                Text('Giới tính : ${dd.gioitinh}'),
                Text('Điểm ngoại khóa : ${dd.diemngoaikhoa}')
              ],
            ),
          )),
    );
  }
}
