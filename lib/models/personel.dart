import 'package:flutter/cupertino.dart';

class Personel {
  int id;
  String isim;
  bool aktif;

  Personel({this.aktif, this.isim});
  Personel.withID({this.id, this.aktif, this.isim});

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
