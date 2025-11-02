import 'package:flutter/material.dart';

AppBar buildAppBar(String title) {
  return AppBar(
    centerTitle: true,
    title: Text(title),
    backgroundColor: Colors.white,
  );
}
