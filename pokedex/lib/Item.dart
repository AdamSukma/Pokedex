import 'package:flutter/material.dart';
import 'Deskripsi.dart';

class Item extends StatelessWidget {
  Item(
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
    return Card(
              //unown
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.all(0),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Deskripsi(nama: nama,gambar: gambar,tipe: tipe,warna: warna,ability: ability,jenis: jenis,desc: desc,)),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 110,
                      child: Image.asset(
                        gambar,
                        height: 110,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            nama,
                            style: TextStyle(fontSize: 20),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(tipe, style: TextStyle(color: Colors.white),),
                            ),
                            color: warna,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}