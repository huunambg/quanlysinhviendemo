import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';
import 'package:ndialog/ndialog.dart';

class QuenMatKhau extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: quenmk());
  }
}

String tk = '';
String mk = '';

class quenmk extends StatefulWidget {
  const quenmk({Key? key}) : super(key: key);

  @override
  State<quenmk> createState() => _quenmkState();
}

class _quenmkState extends State<quenmk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Quên Mật Khẩu',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    onChanged: (value) {
                      tk = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nhập Email hoặc SĐT',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  child: ElevatedButton(
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
                    child: Text('Send to Pass words'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyApploggin()));
                        },
                        child: Text('Quay lại đăng nhập')),
                    TextButton(
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
                        child: Text('Thử cách khác ?')),
                  ],
                )
              ],
            )));
  }
}
