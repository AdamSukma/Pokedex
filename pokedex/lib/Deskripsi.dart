import 'package:flutter/material.dart';

class Deskripsi extends StatelessWidget {
  Deskripsi(
      {this.nama,
      this.gambar,
      this.tipe,
      this.warna,
      this.ability,
      this.jenis,
      this.desc});
  final String gambar;
  final String nama;
  final String tipe;
  final Color warna;
  final String ability;
  final String jenis;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nama),
          backgroundColor: warna,
        ),
        body: Column(
          children: <Widget>[
            Center(child: Image.asset(gambar)),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Row( children: <Widget>[
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(tipe,style: TextStyle(color: Colors.white),),
                            ),
                            color: warna,
                          ),
                          Expanded(child: Container(height:50,width: 50,)),
                          Text('Abilities : $ability '),
                          // Text('Weight : $weight ')
                        ]),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Category: "+jenis,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            desc,
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
