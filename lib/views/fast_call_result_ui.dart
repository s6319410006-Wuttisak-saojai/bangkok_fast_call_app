import 'package:bangkok_fast_call_app/models/HospitalList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FastCallResultUI extends StatefulWidget {
  //ตัวแปรประเภท Hospitallist
  HospitalList? hospitalList;

  FastCallResultUI({super.key, this.hospitalList});

  @override
  State<FastCallResultUI> createState() => _FastCallResultUIState();
}

class _FastCallResultUIState extends State<FastCallResultUI> {
  //ใช้โทร
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  //ใช้เข้าเว็บ
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          '' + widget.hospitalList!.hosname + '',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.2,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/' + widget.hospitalList!.hosimage,
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.yellow),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.hospitalUser,
                  color: Colors.green,
                ),
                title: Text(
                  'ชื่อ : ' + widget.hospitalList!.hosname,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[100],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                onTap: () {
                  _makePhoneCall(widget.hospitalList!.hosphone);
                },
                leading: Icon(
                  FontAwesomeIcons.phone,
                  color: Colors.green,
                ),
                title: Text(
                  '' + widget.hospitalList!.hosphone,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                onTap: () {
                  _launchInBrowser(Uri.parse(widget.hospitalList!.hosweb));
                },
                leading: Icon(
                  FontAwesomeIcons.globe,
                  color: Color(0xFF3B5998),
                ),
                title: Text(
                  'Website : ' + widget.hospitalList!.hosweb,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.mapLocationDot,
                  color: Colors.red,
                ),
                title: Text(
                  'ที่อยู่ : ' + widget.hospitalList!.hosadd,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
