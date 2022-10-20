import 'package:flutter/material.dart';
import 'package:hh/screen1.dart';
import '../lophoc/lopa.dart';
import 'package:ndialog/ndialog.dart';
import '../class.dart';
import '../lophoc/lopb.dart';
import '../lophoc/lopc.dart';
import '../lophoc/lopd.dart';
import '../lophoc/lope.dart';
import '../data.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ThemSVA extends StatelessWidget {
  const ThemSVA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return addsva();
  }
}

class ThemSVB extends StatelessWidget {
  const ThemSVB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return addsvb();
  }
}

class ThemLop extends StatelessWidget {
  const ThemLop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return addlop();
  }
}

String? ten, ns, ma, gt, diem, anh;
K19 _svadd = K19(
    name: '', ngaysinh: '', masv: '', gioitinh: '', diemngoaikhoa: '', img: '');

final namecontrollor = TextEditingController();
final masvcontrollor = TextEditingController();
final ngaysinhcontrollor = TextEditingController();
final gioitinhcontrollor = TextEditingController();
final diemngoaikhoacontrollor = TextEditingController();
final anhcontrollor = TextEditingController();

class addsva extends StatefulWidget {
  const addsva({Key? key}) : super(key: key);

  @override
  State<addsva> createState() => _addsvState();
}

class _addsvState extends State<addsva> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LopA()));
          },
        ),
        title: Text("Thêm Sinh Viên"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    _svadd.name = value;
                  },
                  controller: namecontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập tên Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.masv = value;
                  },
                  controller: masvcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập mã Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.ngaysinh = value;
                  },
                  controller: ngaysinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập ngày sinh"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.gioitinh = value;
                  },
                  controller: gioitinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập giới tính"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.diemngoaikhoa = value;
                  },
                  controller: diemngoaikhoacontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập điểm ngoại khóa"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.img = value;
                  },
                  controller: anhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập link ảnh"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  cnttk19a.add(_svadd);
                  dulieu.add(_svadd);
                  _svadd = K19(
                      name: '',
                      ngaysinh: '',
                      masv: '',
                      gioitinh: '',
                      diemngoaikhoa: '',
                      img: '');
                  namecontrollor.text = '';
                  ngaysinhcontrollor.text = '';
                  masvcontrollor.text = '';
                  gioitinhcontrollor.text = '';
                  diemngoaikhoacontrollor.text = '';
                  anhcontrollor.text = '';
                });
                showTopSnackBar(
                  context,
                  CustomSnackBar.success(
                    backgroundColor: Colors.deepOrangeAccent.shade100,
                    message: "Đã thêm sinh viên",
                  ),
                );
              },
              icon: Icon(Icons.add_box_sharp),
              label: Text("Thêm"))
        ],
      ),
    );
  }
}

class addsvb extends StatefulWidget {
  const addsvb({Key? key}) : super(key: key);

  @override
  State<addsvb> createState() => _addsvbState();
}

class _addsvbState extends State<addsvb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LopB()));
          },
        ),
        title: Text("Thêm Sinh Viên"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    _svadd.name = value;
                  },
                  controller: namecontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập tên Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.masv = value;
                  },
                  controller: masvcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập mã Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.ngaysinh = value;
                  },
                  controller: ngaysinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập ngày sinh"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.gioitinh = value;
                  },
                  controller: gioitinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập giới tính"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.diemngoaikhoa = value;
                  },
                  controller: diemngoaikhoacontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập điểm ngoại khóa"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.img = value;
                  },
                  controller: anhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập link ảnh"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  cntt19b.add(_svadd);
                  dulieu.add(_svadd);
                  _svadd = K19(
                      name: '',
                      ngaysinh: '',
                      masv: '',
                      gioitinh: '',
                      diemngoaikhoa: '',
                      img: '');
                  namecontrollor.text = '';
                  ngaysinhcontrollor.text = '';
                  masvcontrollor.text = '';
                  gioitinhcontrollor.text = '';
                  diemngoaikhoacontrollor.text = '';
                  anhcontrollor.text = '';
                });

                showTopSnackBar(
                  context,
                  CustomSnackBar.success(
                    backgroundColor: Colors.deepOrangeAccent.shade100,
                    message: "Đã thêm sinh viên",
                  ),
                );
              },
              icon: Icon(Icons.add_box_sharp),
              label: Text("Thêm"))
        ],
      ),
    );
  }
}

class addsvc extends StatefulWidget {
  const addsvc({Key? key}) : super(key: key);

  @override
  State<addsvc> createState() => _addsvcState();
}

class _addsvcState extends State<addsvc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LopC()));
          },
        ),
        title: Text("Thêm Sinh Viên"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    _svadd.name = value;
                  },
                  controller: namecontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập tên Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.masv = value;
                  },
                  controller: masvcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập mã Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.ngaysinh = value;
                  },
                  controller: ngaysinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập ngày sinh"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.gioitinh = value;
                  },
                  controller: gioitinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập giới tính"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.diemngoaikhoa = value;
                  },
                  controller: diemngoaikhoacontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập điểm ngoại khóa"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.img = value;
                  },
                  controller: anhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập link ảnh"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  cnttk19c.add(_svadd);
                  dulieu.add(_svadd);
                  _svadd = K19(
                      name: '',
                      ngaysinh: '',
                      masv: '',
                      gioitinh: '',
                      diemngoaikhoa: '',
                      img: '');
                  namecontrollor.text = '';
                  ngaysinhcontrollor.text = '';
                  masvcontrollor.text = '';
                  gioitinhcontrollor.text = '';
                  diemngoaikhoacontrollor.text = '';
                  anhcontrollor.text = '';
                });

                showTopSnackBar(
                  context,
                  CustomSnackBar.success(
                    backgroundColor: Colors.deepOrangeAccent.shade100,
                    message: "Đã thêm sinh viên",
                  ),
                );
              },
              icon: Icon(Icons.add_box_sharp),
              label: Text("Thêm"))
        ],
      ),
    );
  }
}

class addsvd extends StatefulWidget {
  const addsvd({Key? key}) : super(key: key);

  @override
  State<addsvd> createState() => _addsvdState();
}

class _addsvdState extends State<addsvd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LopD()));
          },
        ),
        title: Text("Thêm Sinh Viên"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    _svadd.name = value;
                  },
                  controller: namecontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập tên Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.masv = value;
                  },
                  controller: masvcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập mã Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.ngaysinh = value;
                  },
                  controller: ngaysinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập ngày sinh"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.gioitinh = value;
                  },
                  controller: gioitinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập giới tính"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.diemngoaikhoa = value;
                  },
                  controller: diemngoaikhoacontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập điểm ngoại khóa"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.img = value;
                  },
                  controller: anhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập link ảnh"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  cnttk19d.add(_svadd);
                  dulieu.add(_svadd);
                  _svadd = K19(
                      name: '',
                      ngaysinh: '',
                      masv: '',
                      gioitinh: '',
                      diemngoaikhoa: '',
                      img: '');
                  namecontrollor.text = '';
                  ngaysinhcontrollor.text = '';
                  masvcontrollor.text = '';
                  gioitinhcontrollor.text = '';
                  diemngoaikhoacontrollor.text = '';
                  anhcontrollor.text = '';
                });

                showTopSnackBar(
                  context,
                  CustomSnackBar.success(
                    backgroundColor: Colors.deepOrangeAccent.shade100,
                    message: "Đã thêm sinh viên",
                  ),
                );
              },
              icon: Icon(Icons.add_box_sharp),
              label: Text("Thêm"))
        ],
      ),
    );
  }
}

class addsve extends StatefulWidget {
  const addsve({Key? key}) : super(key: key);

  @override
  State<addsve> createState() => _addsveState();
}

class _addsveState extends State<addsve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LopE()));
          },
        ),
        title: Text("Thêm Sinh Viên"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    _svadd.name = value;
                  },
                  controller: namecontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập tên Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.masv = value;
                  },
                  controller: masvcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập mã Sinh Viên"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.ngaysinh = value;
                  },
                  controller: ngaysinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập ngày sinh"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.gioitinh = value;
                  },
                  controller: gioitinhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập giới tính"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.diemngoaikhoa = value;
                  },
                  controller: diemngoaikhoacontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập điểm ngoại khóa"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _svadd.img = value;
                  },
                  controller: anhcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập link ảnh"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  cnttk19e.add(_svadd);
                  dulieu.add(_svadd);
                  _svadd = K19(
                      name: '',
                      ngaysinh: '',
                      masv: '',
                      gioitinh: '',
                      diemngoaikhoa: '',
                      img: '');
                  namecontrollor.text = '';
                  ngaysinhcontrollor.text = '';
                  masvcontrollor.text = '';
                  gioitinhcontrollor.text = '';
                  diemngoaikhoacontrollor.text = '';
                  anhcontrollor.text = '';
                });

                showTopSnackBar(
                  context,
                  CustomSnackBar.success(
                    backgroundColor: Colors.deepOrangeAccent.shade100,
                    message: "Đã thêm sinh viên",
                  ),
                );
              },
              icon: Icon(Icons.add_box_sharp),
              label: Text("Thêm"))
        ],
      ),
    );
  }
}

Lop _ictu = Lop(TenLop: '', SiSo: '');
final tenlopcontrollor = TextEditingController();
final sisocontrollor = TextEditingController();

class addlop extends StatefulWidget {
  const addlop({Key? key}) : super(key: key);

  @override
  State<addlop> createState() => _addlopState();
}

class _addlopState extends State<addlop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade200,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Bottombar()));
            },
          ),
          title: Text("Thêm Lớp"),
          centerTitle: true,
        ),
        body: Column(children: [
          Container(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                TextField(
                  onChanged: (value) {
                    _ictu.TenLop = value;
                  },
                  controller: tenlopcontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập Tên Lớp"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    _ictu.SiSo = value;
                  },
                  controller: sisocontrollor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nhập sĩ số"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      if (int.parse(_ictu.SiSo.toString()) > 200 ||
                          _ictu.TenLop == "") {
                        NDialog(
                          dialogStyle: DialogStyle(titleDivider: true),
                          title: Text("Dữ liệu nhập không phù hợp"),
                          content: Text(
                              "Xin mời kiểm tra tên lớp để trống \nhoặc sĩ số có vượt quá 200 không"),
                          actions: <Widget>[
                            TextButton(
                                child: Text("Oke"),
                                onPressed: () => Navigator.pop(context)),
                          ],
                        ).show(context);
                      } else {
                        showTopSnackBar(
                          context,
                          CustomSnackBar.success(
                            message: "Thêm Thành Công Lớp: ${_ictu.TenLop}",
                          ),
                        );
                        ictu.add(_ictu);
                        _ictu = Lop(TenLop: "", SiSo: "");

                        tenlopcontrollor.text = "";
                        sisocontrollor.text = "";
                      }
                    },
                    child: Text("Thêm Lớp"))
              ]))
        ]));
  }
}
