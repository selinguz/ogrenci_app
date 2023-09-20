import 'dart:math';

import 'package:flutter/material.dart';

class MesajlarSayfasi extends StatefulWidget {
  const MesajlarSayfasi({super.key});

  @override
  State<MesajlarSayfasi> createState() => _MesajlarSayfasiState();
}

class _MesajlarSayfasiState extends State<MesajlarSayfasi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mesajlar'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemBuilder: (context, index) {
                  bool benMiyim = Random().nextBool();
                  return Align(
                    alignment:
                        benMiyim ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 16.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent.shade100,
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text('mesaj mesaj mesaj mesaj'),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Gönder'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
