import 'package:flutter/material.dart';
import 'screen1.dart';
import 'class.dart';

class Timkiem extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = ' ';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Bottombar()));
        },
        icon: Icon(Icons.keyboard_return));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<K19> hh = [];
    for (var item in dulieu) {
      if (item.name.toString().toLowerCase().contains(query.toLowerCase())) {
        hh.add(item);
      }
      ;
    }
    return ListView.builder(
        itemCount: hh.length,
        itemBuilder: ((context, index) {
          final result = hh[index];
          return ListTile(
            title: Text("${result.name}"),
            subtitle: Text("${result.ngaysinh}"),
          );
        }));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
}

List<K19> dulieu = [
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
      img:
          "https://scontent.fhan15-1.fna.fbcdn.net/v/t39.30808-6/310434511_627862288977915_6554676152613629353_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=q3u-Mywbp24AX-1qT6K&_nc_oc=AQnyQXccWAUb_3ILl3Rrcn_7NeFebI1o_XI7apiWupATMzgjWXE_wJs0vALjMF9p0onOAj2x-G1YheiMnNaAuoqE&_nc_ht=scontent.fhan15-1.fna&oh=00_AT82HXCUitdjNI5YWHqTrBDC2g7re8HdPXJILw5X_HCLig&oe=6353F90C"),
  K19(
      name: 'Nông Văn Nghĩa',
      ngaysinh: '09/7/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-2.fna.fbcdn.net/v/t39.30808-6/301474792_414163420812515_2468034373915340452_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TwBOpYYpJbkAX9_-iJa&_nc_ht=scontent.fhan15-2.fna&oh=00_AT83uLSDq6E3gKEmMWkB1re1-0JDfT57YeqidxMsDGkhVw&oe=635205F7"),
  K19(
      name: 'Hà Văn Tiến',
      ngaysinh: '05/11/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-2.fna.fbcdn.net/v/t39.30808-6/309983635_771845417262667_2752030792633140993_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=M9eo0tKHxSYAX9fu3oL&_nc_ht=scontent.fhan15-2.fna&oh=00_AT-Ek6T94lIJ1SIcRll3gbD2NvVF-prSK7BW4gZpz6XpIQ&oe=63524D9E"),
  K19(
      name: 'Nguyễn Văn Dương',
      ngaysinh: '05/11/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan5-11.fna.fbcdn.net/v/t39.30808-6/307853754_2326702284144004_1327453752337118439_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=174925&_nc_ohc=j7fr8cOWQz8AX_VLFtr&_nc_ht=scontent.fhan5-11.fna&oh=00_AT9-VJJIreYFN4km0tGebFtuCpu-LmvYvK24jBGDfR4zDw&oe=6352DD82"),
  K19(
      name: 'Trần Đình Toản',
      ngaysinh: '05/11/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-2.fna.fbcdn.net/v/t1.6435-9/162432310_804325297188041_1374501689683408569_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=YLMz0CGah88AX9CuzUm&_nc_ht=scontent.fhan15-2.fna&oh=00_AT-ZqOpOVSe-xBpLUYY-EIOLWLVHExT-ZA9B-xkLGIWrrw&oe=6374CF06"),
  K19(
      name: 'Nguyễn Thành Long',
      ngaysinh: '03/2/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-2.fna.fbcdn.net/v/t39.30808-6/296442564_3284338638449027_8525390598184726470_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=9Kdue5PHujQAX9egHBE&tn=sNeM9QNa2IJZVkpS&_nc_ht=scontent.fhan15-2.fna&oh=00_AT_LiXxq-9kB50hopf8IwEyYeWKYtePG_itWxYPYB_Qiyw&oe=63523624"),
  K19(
      name: 'Phạm Thị Ánh',
      ngaysinh: '03/3/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nữ',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-1.fna.fbcdn.net/v/t39.30808-6/310084373_652688169766188_8025631189274665659_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=YBT25CH5mg4AX_KYzVz&_nc_ht=scontent.fhan15-1.fna&oh=00_AT_DPWTfL2VR1okOgSL-EjFAg1KwCNHiU3vJ-RfJDIN6fg&oe=63537569"),
  K19(
      name: 'Bùi Chung Quân',
      ngaysinh: '03/6/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-1.fna.fbcdn.net/v/t39.30808-6/309163998_1208797133235675_8736618258782965296_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=gYWv_FsUUH8AX-s956C&tn=sNeM9QNa2IJZVkpS&_nc_ht=scontent.fhan15-1.fna&oh=00_AT-PQCFFNLtlfA_GcK-MbmaTp8jRbiYyxiK1NdYOCznoPA&oe=63536D57"),
  K19(
      name: 'Đặng Xuân Nhâm',
      ngaysinh: '03/5/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-2.fna.fbcdn.net/v/t39.30808-6/279585799_1211105373030849_4834584257951863573_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=v4rBa0Yab10AX-L2ldC&_nc_ht=scontent.fhan15-2.fna&oh=00_AT_h2DPFa6cLNzilJ8vYPtbbK7J0LnCK2mJs1nGAeoZwfg&oe=635221D7"),
  K19(
      name: 'Bừi Thị Ánh Mai',
      ngaysinh: '05/11/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nữ',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-1.fna.fbcdn.net/v/t1.6435-9/131338953_1147043979026875_813847436105715643_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_ohc=M3-FaSWbRc8AX8EX4Ny&tn=sNeM9QNa2IJZVkpS&_nc_ht=scontent.fhan15-1.fna&oh=00_AT8MYm2j_teB6JETRi-D1sapz54CnSCF380u-v8usoVSZA&oe=6374D13D"),
  K19(
      name: 'Lê Thị Thư',
      ngaysinh: '05/11/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nữ',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-1.fna.fbcdn.net/v/t1.6435-9/118649422_769678337182253_1132723943327659392_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=19026a&_nc_ohc=PwskMP8JqXIAX-2DBCQ&tn=sNeM9QNa2IJZVkpS&_nc_ht=scontent.fhan15-1.fna&oh=00_AT_cCtz52lFN_cv4qY5wr2MGdLKzfqqC-dOo253sMHs-vw&oe=6374230C"),
  K19(
      name: 'Nông Văn Vũ',
      ngaysinh: '05/11/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-2.fna.fbcdn.net/v/t39.30808-6/309634871_1286695322160097_3156328646186433211_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XaZMomMKqMEAX9XurmO&_nc_ht=scontent.fhan15-2.fna&oh=00_AT_aoTiGJYDJtC4hjcOMJk-6VvFJBoaaWEz2p-Zw1aNs0g&oe=6353D84D"),
  K19(
      name: 'Đặng Thị Thùy Trang',
      ngaysinh: '05/11/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nữ',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-1.fna.fbcdn.net/v/t39.30808-6/308067225_1273458353470913_1890114931881829619_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_ohc=VFNlHdxkBPUAX8JDbAW&_nc_ht=scontent.fhan15-1.fna&oh=00_AT8OrwokeRFGBubApvRkiVwu9YWFGFXCmjA7coih574nBQ&oe=6353137A"),
  K19(
      name: 'Nguyễn Văn Sơn',
      ngaysinh: '05/11/2002',
      masv: "DTC2054802010017",
      gioitinh: 'nam',
      diemngoaikhoa: '250',
      img:
          "https://scontent.fhan15-2.fna.fbcdn.net/v/t39.30808-6/246588942_908965586388026_2088190865519311072_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a4a2d7&_nc_ohc=gYY-QVoqGMcAX8KpCIQ&_nc_ht=scontent.fhan15-2.fna&oh=00_AT9JdTpJrBadoaFcz9aZMxMLuMpjAJ_py4s3fIGBnQsnGQ&oe=63524A0C"),
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
  K19(name: 'Tạ Đức Thuận', ngaysinh: '05/6/2002,gioitinh: "nam"'),
  K19(name: 'Trần Phương Nam', ngaysinh: '07/2/2002', gioitinh: "nam"),
  K19(name: 'Nguyễn Tuấn Annh', ngaysinh: '22/2/2002', gioitinh: "nam"),
];
