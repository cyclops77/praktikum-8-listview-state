import 'package:flutter/material.dart';
import 'package:praktikum8/contoh-custom-widget.dart';
import 'package:praktikum8/contoh-extract-widget.dart';
import 'package:praktikum8/routing.dart';

class Pilihan extends StatefulWidget {
  @override
  _PilihanState createState() => _PilihanState();
}

class _PilihanState extends State<Pilihan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilih Contoh"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                child: Text(
                  "Terlihat sama aja, yang beda di penulisan kodingnya ya gaes",
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: (){
                  Routes.changePage(context, HomePage());
                },
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Custom Widget", style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: (){
                  Routes.changePage(context, ExtractPage());
                },
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.lightGreen,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Extract Widget", style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}