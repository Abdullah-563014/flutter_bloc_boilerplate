import 'package:flutter/material.dart';




class PageEntity<T> {

  String path;
  Widget page;
  dynamic bloc;



  PageEntity({
    required this.path, required this.page, required this.bloc
  });


}