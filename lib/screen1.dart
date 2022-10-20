import 'package:hh/module/add.dart';
import 'package:hh/module/dangxuat.dart';
import 'package:hh/module/huongdan.dart';
import 'package:hh/lophoc/lopc.dart';
import 'package:hh/lophoc/lopd.dart';
import 'package:hh/lophoc/lope.dart';
import 'package:hh/module/thongke.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ndialog/ndialog.dart';
import 'class.dart';
import 'lophoc/lopa.dart';
import 'lophoc/lopb.dart';
import 'data.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quản Lý Sinh Viên',
      home: MyWidget3(),
    );
  }
}

List<Lop> ictu = [
  Lop(TenLop: "CNTTK19A", SiSo: "50"),
  Lop(TenLop: "CNTTK19B", SiSo: "50"),
];

final suatencontrolor = TextEditingController();
final suaphonecontrolor = TextEditingController();

class MyWidget3 extends StatefulWidget {
  const MyWidget3({Key? key}) : super(key: key);

  @override
  State<MyWidget3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 169, 246, 176),
      appBar: AppBar(
        title: Text("Quản lý sinh viên"),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: Timkiem());
                },
                icon: Icon(Icons.search),
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThemLop()));
                },
                icon: Icon(Icons.add),
              )
            ],
          ),
        ],
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 130,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: ictu.length,
          itemBuilder: ((context, index) {
            final x = ictu[index];
            return Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 34,
                    width: 34,
                    child: Image.asset("assets/images/man.png"),
                  ),
                  Text("Lớp: ${x.TenLop}"),
                  Text(
                    'Sĩ số: ${x.SiSo} ',
                    style: TextStyle(fontSize: 10),
                  ),
                  IconButton(
                      iconSize: 25,
                      icon: Icon(Icons.play_circle),
                      onPressed: () {
                        if (index == 0) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LopA()));
                        }
                        if (index == 1) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LopB()));
                        }
                        if (index == 2) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LopC()));
                        }
                        if (index == 3) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LopD()));
                        }
                        if (index == 4) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LopE()));
                        }
                      })
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: index.isEven
                          ? [Colors.orange.withOpacity(0.8), Colors.grey]
                          : [
                              Color.fromARGB(255, 0, 255, 0).withOpacity(0.8),
                              Color.fromARGB(255, 158, 158, 158)
                            ]),
                  borderRadius: BorderRadius.circular(30)),
            );
          })),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   child: Text('Drawer Header'),
            //   decoration: BoxDecoration(
            //     color: Colors.purple,
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Người dùng:"),
              accountEmail: Text("TuanLongNamNghiaTienDuong@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/3280/3280979.png")),
            ),
            ListTile(
              hoverColor: Colors.red,
              title: Text('Thống Kê'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Thongke()));
              },
              onLongPress: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              hoverColor: Colors.red,
              title: Text('Hướng dẫn'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Huongdan()));
              },
              onLongPress: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              hoverColor: Colors.red,
              title: Text('Phản hồi'),
              onTap: () {
                NDialog(
                  dialogStyle: DialogStyle(titleDivider: true),
                  title: Column(
                    children: [
                      Text("Nhập nội dung phản hồi với chúng tôi"),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      )
                    ],
                  ),
                  actions: <Widget>[
                    TextButton(
                        child: Text("Gửi đi"),
                        onPressed: () => Navigator.pop(context)),
                  ],
                ).show(context);
              },
              onLongPress: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              hoverColor: Colors.red,
              title: Text('Mở khóa VIP'),
              onTap: () {
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
              onLongPress: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              hoverColor: Colors.red,
              title: Text('Thoát'),
              onLongPress: () {
                Navigator.pop(context);
              },
              onTap: () {
                NDialog(
                  dialogStyle: DialogStyle(
                      titleDivider: true,
                      backgroundColor: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20)),
                  title: Text("Hi, Xin Chào Bạn"),
                  content: Text("Bạn có chắc chắn thoát khỏi ứng dụng"),
                  actions: <Widget>[
                    FlatButton(
                        child: Text("Thoát"),
                        onPressed: () {
                          SystemNavigator.pop();
                        }),
                    FlatButton(
                        child: Text("Đăng Xuất"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dangxuat()));
                        }),
                    FlatButton(
                        child: Text("Ở lại"),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                ).show(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
