import 'package:flutter/material.dart';
class TylorData{

  String? name;

  String? url;

  TylorData({this.name, this.url});

  TylorData.fromJson(Map<String,dynamic> json){
    name=json['id'];
    url=json['name'];
  }
}