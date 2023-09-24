import 'package:flutter/material.dart';




class PageEntity<T> {

  String path;
  Widget page;
  List<dynamic> blocs;



  PageEntity({
    required this.path, required this.page, required this.blocs
  });


}