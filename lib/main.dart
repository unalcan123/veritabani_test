import 'package:flutter/material.dart';

import 'models/personel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Personel per = Personel.withID(id: 1, aktif: true, isim: 'Ali');
    Map<String, dynamic> m = per.toMap();
    print(m);

    Personel kopya = Personel.fromMap(m);
    print(kopya);
    return Container();
  }
}
