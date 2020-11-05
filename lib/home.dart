import 'package:flutter/material.dart';
import 'package:praktikum8/detail.dart';
import 'package:praktikum8/partial/card.dart';
import 'package:praktikum8/partial/teks.dart';
import 'package:praktikum8/routing.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beranda"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (context, int x){
            return Container(
              width: double.infinity,
              height: 1,
              color: Colors.white,
            );
          },
          itemCount: 3,
          itemBuilder: (context, int i){
            return InkWell(
              onTap: (){
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) {
                //       return DetailPage(
                //         teks: 'Ini Item KE-${(i+1)}',
                //       );
                //     }
                //   )
                // );
                Routes.changePage(context, 
                  DetailPage(
                    teks: 'Ini Item KE-${(i+1)}',
                  )
                );
              },
              child: CardView(
                warna: Colors.teal,
                isiTeks: 'Ini Item KE-${(i+1)}',
              ),
            );
          }
        )
        // Column(
        //   children: [
        //     // CardView(
        //     //   warna: Colors.red,
        //     // ),
        //     // CardView(
        //     //   warna: Colors.green,
        //     // ),
        //     TeksClass(isi: 'TEKS SATU',),
        //     TeksClass(isi: 'TEKS DUA',),
        //   ],
        // ),
      ),
    );
  }
}