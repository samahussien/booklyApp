import 'package:flutter/material.dart';

void customSnackBar(context,String msg) {
  ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(msg)));
}
