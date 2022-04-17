import 'package:flutter/material.dart';

class Class {
  String id;
  String name;


  GdUser({
   required this.id,
    required this.name,

  });

  Class.fromMap(Map map) {
    this.name = map['name'];

  }


  toMap() {
    return {
      'name': this.name,

    };
  }
}
