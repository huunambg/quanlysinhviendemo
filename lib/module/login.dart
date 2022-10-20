import 'package:flutter/material.dart';
import '../screen1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'forgotpass.dart';
import 'signup.dart';

class MyApploggin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}

String tk = '';
String mk = '';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false;
  bool ischeckpass = true;
  @override
  void initState() {
    super.initState();
    loadtk();
  }

  void loadtk() async {
    final acountdata = await SharedPreferences.getInstance();
    final passdata = await SharedPreferences.getInstance();
    final checkdata = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = acountdata.getString('name') ?? '';
      passwordController.text = passdata.getString('pass') ?? '';
      isChecked = checkdata.getBool('check') ?? false;
    });
  }

  void savedata() async {
    final acountdata = await SharedPreferences.getInstance();
    final passdata = await SharedPreferences.getInstance();
    final checkdata = await SharedPreferences.getInstance();
    acountdata.setString('name', tk.toString());
    passdata.setString('pass', mk.toString());
    checkdata.setBool('check', isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Đăng Nhập',
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
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Tên đăng nhập',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: ischeckpass,
                    onChanged: (value) {
                      mk = value;
                    },
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'mật khẩu',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              ischeckpass = !ischeckpass;
                            });
                          },
                          child: Icon(ischeckpass
                              ? Icons.visibility
                              : Icons.visibility_off),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Lưu tài khoản"),
                    Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          print(value);
                          isChecked = value!;
                        });
                        if (isChecked == true) {
                          setState(() {
                            savedata();
                          });
                        }
                        if (isChecked == false) {
                          nameController.text = '';
                          passwordController.text = '';
                          savedata();
                        }
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuenMatKhau()));
                      },
                      textColor: Colors.blue,
                      child: Text('Quên mật khẩu'),
                    ),
                  ],
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Đăng Nhập'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Bottombar())));
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Bạn chưa có tài khoản?'),
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'Đang kí tài khoản',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => DangKi()));
                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
