import 'package:bangkok_fast_call_app/views/fast_call_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FastCallSplashUI extends StatefulWidget {
  const FastCallSplashUI({super.key});

  @override
  State<FastCallSplashUI> createState() => _FastCallSplahUIState();
}

class _FastCallSplahUIState extends State<FastCallSplashUI> {
  //ทำ SplashScreen
  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FastCallHomeUI()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.yellow),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'สายด่วนโรงพยาบาลในกรุงเทพ',
              style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'Need Medic?\nBangkok Fast Call',
              style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.yellow),
            ),
          ],
        ),
      ),
    );
  }
}
