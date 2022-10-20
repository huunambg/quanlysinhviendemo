import 'package:flutter/material.dart';
import 'package:hh/module/add.dart';
import 'package:hh/module/detail.dart';
import 'package:hh/screen1.dart';
import 'package:ndialog/ndialog.dart';
import '../class.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
class LopD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LpD(),
    );
  }
}

class LpD extends StatefulWidget {
  const LpD({Key? key}) : super(key: key);

  @override
  State<LpD> createState() => _LopDState();
}

class _LopDState extends State<LpD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(238, 255, 255, 255),
        appBar: AppBar(
          title: Text("CNTTK19D"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bottombar()));
              },
              icon: Icon(Icons.keyboard_return)),
          actions: [
            Row(
              children: [
                Text("Thêm SV"),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => addsvd()));
                  },
                  icon: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: cnttk19d.length,
          itemBuilder: ((context, index) {
            final x = cnttk19d[index];
            return Container(
              height: 70,
              margin: EdgeInsets.only(bottom: 10),
              child: ListTile(
                title: Text(
                  "${x.name}",
                  style: TextStyle(color: Colors.white70),
                ),
                subtitle: Text("Ngày Sinh: ${x.ngaysinh}",
                    style: TextStyle(color: Colors.white70)),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: x.gioitinh == "nam"
                      ? Image.asset("assets/images/graduating_student.png")
                      : Image.asset("assets/images/girl.png"),
                ),
                trailing: Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.white70,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Lopx(
                                dd: cnttk19d[index],
                              )));
                },
                onLongPress: () {
                  NDialog(
                    dialogStyle: DialogStyle(
                        titleDivider: true,
                        backgroundColor: Colors.pink.shade100),
                    title: Text("Sinh viên: ${x.name}"),
                    content: Text("Mời bạn chọn chức năng"),
                    actions: <Widget>[
                      TextButton(
                          child: Text("Sửa"),
                          onPressed: () {
                            Navigator.pop(context);
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
                          }),
                      TextButton(
                          child: Text("Xóa"),
                          onPressed: () {
                            setState(() {
                              cnttk19d.removeAt(index);
                            });
                            Navigator.pop(context);
                              showTopSnackBar(
                  context,
                  CustomSnackBar.success(
                    backgroundColor: Colors.deepOrangeAccent.shade100,
                    message: "Đã xóa sinh viên",
                  ),
                );
                          }),
                    ],
                  ).show(context);
                },
              ),
              decoration: BoxDecoration(
                  color: x.gioitinh == "nam"
                      ? Colors.indigo
                      : Color.fromARGB(255, 226, 30, 233),
                  borderRadius: BorderRadius.circular(15)),
            );
          }),
        ));
  }
}

List<K19> cnttk19d = [
  K19(
      name: 'Nguyễn Hoàng Tuấn',
      ngaysinh: '06/8/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-1.fna.fbcdn.net/v/t1.6435-9/146927831_882392402334125_6881274503338097900_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=ad2b24&_nc_ohc=HAMvrqyAIQcAX_wJh0-&_nc_ht=scontent.fhan15-1.fna&oh=00_AT_7AJhbUrpDLEbuIy2taj9st9e-bx9NGHZ_7mULxOCs-g&oe=63750FA4"),
  K19(
      name: 'Nông Hữu Nam',
      ngaysinh: '03/12/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:''
  )
];
