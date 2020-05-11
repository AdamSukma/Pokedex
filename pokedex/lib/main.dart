import 'package:flutter/material.dart';
import 'Item.dart';

void main() {
  runApp(MaterialApp(
    title: 'Pokedex',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('POKEDEX'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Item(
              nama: "MAGIKARP",
              gambar: "images/magikarp.png",
              tipe: "Water",
              warna: Colors.blue,
              ability: "Swift Swim",
              jenis: "Fish",
              desc: "In the distant past, they were fairly strong, but they have become gradually weaker over time.",
            ),
            Item(
              nama: "PIKACHU",
              gambar: "images/pikachu.png",
              tipe: "Electric",
              warna: Colors.yellow,
              ability: "Static",
              jenis: "Mouse",
              desc: "Its nature is to store up electricity. Forests where nests of Pikachu live are dangerous, since the trees are so often struck by lightning.",
            ),
            Item(
              nama: "METAPOD",
              gambar: "images/metapod.png",
              tipe: "Bug",
              warna: Colors.green,
              ability: "Shed Skin",
              jenis: "Cocoon",
              desc: "Its shell is filled with a thick liquid. All of the cells throughout its body are being rebuilt in preparation for evolution.",
            ),
            Item(
              nama: "CLAWITZER",
              gambar: "images/clawitzer.png",
              tipe: "WATER",
              warna: Colors.blue,
              ability: "Mega Launcher",
              jenis: "Howitzer",
              desc: "Their enormous claws launch cannonballs of water powerful enough to pierce tanker hulls.",
            ),
            Item(
              nama: "UNOWN",
              gambar: "images/unown.png",
              tipe: "Psychic",
              warna: Colors.pink,
              ability: "Levitate",
              jenis: "Symbol",
              desc: "This Pokémon is shaped like ancient writing. It is a mystery as to which came first, the ancient writings or the various Unown. Research into this topic is ongoing but nothing is known.",
            )
          ],
        ));
  }
}




