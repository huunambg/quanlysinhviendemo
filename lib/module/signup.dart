import 'package:flutter/material.dart';
import 'login.dart';
import 'package:ndialog/ndialog.dart';

class DangKi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: dangki());
  }
}

class dangki extends StatefulWidget {
  const dangki({Key? key}) : super(key: key);

  @override
  State<dangki> createState() => _dangkiState();
}

class _dangkiState extends State<dangki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Đăng Kí '),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Đang kí tài khoản',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Tên đăng nhập',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mật khẩu',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nhập email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  child: ElevatedButton(
                    child: Text("Đang kí"),
                    onPressed: () {
                      NDialog(
                        dialogStyle: DialogStyle(
                            titleDivider: true,
                            backgroundColor: Colors.pink.shade100),
                        title: Text("Chức năng hiện đang cập nhật ...."),
                        content: Text("updating..."),
                        actions: <Widget>[
                          TextButton(
                              child: Text("Quay lại"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      ).show(context);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Bạn đã có tài khoản"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyApploggin()));
                        },
                        child: Text("Đăng nhập"))
                  ],
                )
              ],
            )));
  }
}
