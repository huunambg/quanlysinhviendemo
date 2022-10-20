import 'package:flutter/material.dart';
import 'package:hh/module/add.dart';
import 'package:hh/screen1.dart';
import '../class.dart';
import '../module/detail.dart';
import 'package:ndialog/ndialog.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class LopB extends StatelessWidget {
  const LopB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: lpb(),
    );
  }
}

class lpb extends StatefulWidget {
  const lpb({Key? key}) : super(key: key);

  @override
  State<lpb> createState() => _LopBState();
}

List<K19> cntt19b = [
  K19(
      name: 'Nghiêm Thị Hồng',
      ngaysinh: '25/8/2002',
      gioitinh: "nữ",
      img:
          "https://scontent.fhan15-1.fna.fbcdn.net/v/t39.30808-6/278271718_153455313812124_5251980555702948248_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_ohc=HZMadGiQeeoAX_g69O1&_nc_ht=scontent.fhan15-1.fna&oh=00_AT_Reh4YnjqVQIQ8B3e8q3-JnJAZPcKEUA0L9sNbnajBew&oe=63537C83"),
  K19(
      name: 'Trần Văn Cường',
      ngaysinh: '07/9/2002',
      gioitinh: "nam",
      img:
          "https://scontent.fhan15-2.fna.fbcdn.net/v/t39.30808-6/291824380_1768988663451827_5104392993473662401_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=mVdo-PwFHQUAX8F97nK&_nc_ht=scontent.fhan15-2.fna&oh=00_AT-4bhkOAzsNFl9gH6xyGDnYBzSBtqqYDWWNY5FZsGqP2g&oe=63539896"),
  K19(name: 'Tải Thị Bằng', ngaysinh: '08/10/2002', gioitinh: "nữ"),
  K19(name: 'Lê Đức Anh', ngaysinh: '09/11/2002', gioitinh: "nam"),
  K19(name: 'Hà Thị Doanh', ngaysinh: '10/12/2002', gioitinh: "nữ"),
  K19(name: 'Đào Mạnh Tú', ngaysinh: '10/5/2002', gioitinh: "nam"),
  K19(name: 'Hà Đức Mạnh', ngaysinh: '12/2/2002', gioitinh: "nam"),
  K19(name: 'Dương Hồng Phi Hùng', ngaysinh: '1/8/2002', gioitinh: "nam"),
  K19(name: 'Đoàn Tuấn Anh', ngaysinh: '02/4/2002', gioitinh: "nam"),
  K19(name: 'Trần Minh Giang', ngaysinh: '03/6/2002', gioitinh: "nam"),
  K19(name: 'Hà Sỹ Tài', ngaysinh: '04/2/2002', gioitinh: "nam"),
  K19(name: 'Tạ Đức Thuận', ngaysinh: '05/6/2002', gioitinh: "nam"),
  K19(name: 'Trần Phương Nam', ngaysinh: '07/2/2002', gioitinh: "nam"),
  K19(name: 'Nguyễn Tuấn Annh', ngaysinh: '22/2/2002', gioitinh: "nam"),
];

class _LopBState extends State<lpb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
        appBar: AppBar(
          title: Text("CNTTK19B"),
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
                        MaterialPageRoute(builder: (context) => ThemSVB()));
                  },
                  icon: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: cntt19b.length,
          itemBuilder: ((context, index) {
            final x = cntt19b[index];
            return Container(
              height: 70,
              margin: EdgeInsets.only(bottom: 10),
              child: ListTile(
                title: Text(
                  "${x.name}",
                  style: TextStyle(color:  Color.fromARGB(238, 255, 255, 255)),
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
                                dd: cntt19b[index],
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
                              cntt19b.removeAt(index);
                            });
                            Navigator.pop(context);
                            showTopSnackBar(
                              context,
                              CustomSnackBar.success(
                                backgroundColor:
                                    Colors.deepOrangeAccent.shade100,
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
