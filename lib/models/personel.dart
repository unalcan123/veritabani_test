import 'package:flutter/cupertino.dart';

class Personel {
  late int id;
  late String isim;
  late bool aktif;
  Personel({required this.aktif, required this.isim, required this.id});
  Personel.withID({required this.id, required this.aktif, required this.isim});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['id'] = id;
    map['isim'] = isim;
    map['aktif'] = aktif;
    return map;
  }

  Personel.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.isim = map['isim'];
    this.aktif = map['aktif'];
  }
  @override
  String toString() {
    return 'Personel{id:$id,isim:$isim,aktiflik:$aktif}';
  }
}
