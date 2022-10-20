import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hh/screen1.dart';

class Huongdan extends StatefulWidget {
  const Huongdan({Key? key}) : super(key: key);

  @override
  State<Huongdan> createState() => _HuongdanState();
}

class _HuongdanState extends State<Huongdan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hướng Dẫn"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Bottombar()));
          },
        ),
      ),
      body: Container(
        child: Container(child:Text(''' Đăng nhập:
        a) Mục đích : Dùng cho giảng viên đăng nhập vào hệ thống để sử dụng các tính năng của chương trình.
b) Thông tin đầu vào : Độc giả cần phải thực hiện theo yêu cầu của hệ thống khi muốn đăng nhập vào hệ thống . 
d) Hệ thống sẽ so sánh dữ liệu với csdl nếu trùng thì hiển thị thông  báo đăng nhập thành công nếu chưa có thì sẽ hiện thị thông báo yêu cầu người dùng đang kí tài khoản.
c) Thao tác xử lý : Một bảng thông báo sẽ hiện ra hỏi độc giả có đăng nhập hoặc thoát , có thêm phần đăng ký nếu độc giả chưa đăng ký
 3. Đăng ký :
 a) Mục đích : Dùng để đăng ký tên tài khoản, mật khẩu và thông tin cá nhân để thực hiện cho quá trình đăng nhập 
b) Thông tin đầu vào : Độc giả cần cần phải thực hiện theo yêu cầu của hệ thống. Ví dụ: Khi click vào chức năng đăng ký nếu chưa có tài khoản
 c) Thao tác xử lý : Một bảng thông báo sẽ hiện ra giúp độc giả điền đầy đủ thông tin để đăng ký hoặc có thể chọn thoát 
4. Quản lý nhập sinh viên: 
a) Mục đích : Chúng ta có thể nhập thêm thông tin sinh viên và cung cấp và lưu trữ dữ liệu trên CSDL.Khi cần chúng ta có thể truy cập, tìm kiếm sách thông qua mã sách hay tên sách, chúng ta cũng có thể thêm bớt sách một cách dễ dàng.
''')
        ),
      ),
    );
  }
}
