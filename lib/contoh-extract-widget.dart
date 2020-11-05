import 'package:flutter/material.dart';
import 'package:praktikum8/detail.dart';
import 'package:praktikum8/partial/card.dart';
import 'package:praktikum8/partial/teks.dart';
import 'package:praktikum8/routing.dart';

class ExtractPage extends StatefulWidget {
  @override
  _ExtractPageState createState() => _ExtractPageState();
}

class _ExtractPageState extends State<ExtractPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Extract"),
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
                Routes.changePage(context, 
                  DetailPage(
                    teks: 'Ini Item KE-${(i+1)}',
                  )
                );
              },
              // INI ADALAH CONTOH YG EXTRACT WIDGET (DIA DIAMBIL VIEW YANG INI(VIEW YG SAMA))//
              child: CardExtraction(
                Colors.teal,
                'Ini Item KE-${(i+1)}',
              ),
            );
          }
        )
      ),
    );
  }

  Widget CardExtraction(Color warna, String isiTeks){
    return Container(
      height: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TeksClass(isi: isiTeks),
        ],
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: warna,
      ),
    );
  }
}