import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  // fungsi untuk memanggil sebuah lingkaran yang ukurannya 2/3 dari layar
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  // fungsi untuk memanggil sebuah lingkaran yang ukurannya 7/8 dari layar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // lingkaran kanan
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            /** positioned berfungsi mengubah posisi sebuah widget
             * dari script diatas right disini (-) berarti mundur atau kedalam 1/3 dari getSmallDiameter(context)
             * dan top juga sama
            */
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffb226b2), Color(0xffff6da7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          // lingkaran kiri
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  "dribble",
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffb226b2), Color(0xffff4891)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          )
        ],
      ),
    );
  }
}
