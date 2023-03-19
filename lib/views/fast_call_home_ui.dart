import 'package:bangkok_fast_call_app/models/HospitalList.dart';
import 'package:bangkok_fast_call_app/views/fast_call_result_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FastCallHomeUI extends StatefulWidget {
  const FastCallHomeUI({super.key});

  @override
  State<FastCallHomeUI> createState() => _FastCallHomeUIState();
}

class _FastCallHomeUIState extends State<FastCallHomeUI> {
  //สร้างตัวแปรเก็บข้อมูล
  List<HospitalList> hospitallist = [
    HospitalList(
      hosname: 'โรงพยาบาลกลาง',
      hosweb: 'http://www.klanghospital.go.th',
      hosadd: '514 ถนนหลวง แขวงป้อมปราบ เขตป้อมปราบฯ กรุงเทพมหานคร 10100',
      hosimage: 'กลาง.png',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2221-6141-60',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลตากสิน',
      hosweb: 'https://www.taksinhosp.go.th/Home',
      hosadd:
          '543 ถนนสมเด็จเจ้าพระยา แขวงคลองสาน เขตคลองสาน กรุงเทพมหานคร 10600',
      hosimage: 'ตากสิน.jpg',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2437-0123',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลเจริญกรุงประชารักษ์',
      hosweb: 'http://www.ckphosp.go.th/Web/diapo.1.0.4/diapo/homepage.html',
      hosadd: '8 ถนนเจริญกรุง แขวงบางคอแหลม เขตบางคอแหลม กรุงเทพมหานคร 10120',
      hosimage: 'เจริญกรุงประชารักษ์.jpg',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2289-7000',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลหลวงพ่อทวีศักดิ์ ชุตินธฺโร อุทิศ',
      hosweb: 'http://www.lpthosp.go.th/LPT/VTJH/project/home.html',
      hosadd: '6 ซอยหนองแขม-วัดศรีนวลฯ 1 แขวงหนองแขม เขตหนองแขม กรุงเทพมหานคร',
      hosimage: 'หลวงพ่อทวีศักดิ์.png',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2429-3575-81',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลเวชการุณย์รัศมิ์',
      hosweb: 'http://www.wkrhosp.go.th',
      hosadd:
          '48 หมู่ 2 ถนนเลียบวารี แขวงกระทุ่มราย เขตหนองจอกกรุงเทพมหานคร 10530 ',
      hosimage: 'เวชการุณย์รัศมิ์.jpg',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2543-1150',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลลาดกระบังกรุงเทพมหานคร',
      hosweb: 'https://www.facebook.com/BMALatKraBangHospital/?locale=th_TH',
      hosadd: '2 ซอยลาดกระบัง 15 ถนนอ่อนนุช  เขตลาดกระบัง กรุงเทพมหานคร 10520',
      hosimage: 'ลาดกระบัง.png',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2326-7711',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลราชพิพัฒน์',
      hosweb: 'https://www.rpphosp.go.th',
      hosadd: '919 หมู่ 4 แขวงบางไผ่ เขตบางแค กรุงเทพมหานคร 10160',
      hosimage: 'ราชพิพัฒน์.png',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2421-2222',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลสิรินธร',
      hosweb: 'http://www.sirindhornhosp.go.th',
      hosadd: '20 ซอยอ่อนนุช แขวงประเวศ เขตประเวศ กรุงเทพมหานคร 10250',
      hosimage: 'สิรินธร.jpg',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2328-6900-19',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลผู้สูงอายุบางขุนเทียน',
      hosweb: 'http://www.msdbangkok.go.th/BKT/home.html',
      hosadd:
          '1075/1 ถนนบางขุนเทียน-ชายทะเล แขวงท่าข้าม เขตบางขุนเทียน กรุงเทพมหานคร 10150',
      hosimage: 'ผู้สูงอายุบางขุนเทียน.jpg',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2405-0900-4',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลคลองสามวา',
      hosweb: 'https://www.facebook.com/klongsamwa.hospital',
      hosadd:
          '177 ถนน ไมตรีจิต แขวงสามวาตะวันออก เขตคลองสามวา กรุงเทพมหานคร 10510',
      hosimage: 'คลองสามวา.jpg',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2150-1300',
    ),
    HospitalList(
      hosname: 'โรงพยาบาลบางนากรุงเทพมหานคร',
      hosweb: 'https://www.facebook.com/BBHMSD/',
      hosadd: '884 ถนนสรรพาวุธ แขวงบางเหนือ เขตบางนา กรุงเทพมหานคร 10260',
      hosimage: 'บางนากรุงเทพมหานคร.jpg',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 0-2180-0201-3',
    ),
    HospitalList(
      hosname: 'ศูนย์บริการการแพทย์ฉุกเฉินกรุงเทพมหานคร (ศูนย์เอราวัณ)',
      hosweb: 'https://www.facebook.com/erawancenter',
      hosadd: '514 ถนนหลวง เขตป้อมปราบศัตรูพ่าย กรุงเทพมหานคร 10100',
      hosimage: 'กรุงเทพมหานครศูนย์เอราวัณ.png',
      hosmail: '',
      hosphone: 'โทรศัพท์ : 1646',
    ),
    HospitalList(
      hosname: 'สำนักงานพัฒนาระบบบริการทางการแพทย์',
      hosweb: 'http://www.oic.go.th/INFOCENTER38/3805/',
      hosadd: '514 ถนนหลวง เขตป้อมปราบศัตรูพ่าย กรุงเทพมหานคร 10100',
      hosimage: 'พัฒนาระบบบริการทางการแพทย์.png',
      hosmail: 'e-mail : prmsdbangkok@gmail.com',
      hosphone: 'โทรศัพท์ : 0-2622-9249',
    ),
    HospitalList(
      hosname: 'สำนักงานเลขานุการ สำนักการแพทย์',
      hosweb: 'https://www.sdmsd.go.th/index.php',
      hosadd: '514 ถนนหลวง เขตป้อมปราบศัตรูพ่าย กรุงเทพมหานคร 10100',
      hosimage: 'สำนักการแพทย์.jpg',
      hosmail: 'e-mail : sdmsd.bangkok@gmail.com',
      hosphone: 'โทรศัพท์ : 0-2622-5173',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'สายด่วนโรงพยาบาลในกรุงเทพ',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.28,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: hospitallist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FastCallResultUI(
                            hospitalList: hospitallist[index],
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/${hospitallist[index].hosimage}',
                    ),
                    title: Text(hospitallist[index].hosname),
                    subtitle: Text('Tel :' + hospitallist[index].hosphone),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green,
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
