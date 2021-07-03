import 'package:flutter/material.dart';

class User {
  
  final String imagepath;
  final String name;
  final String email;

  final bool isDarkMode;
  final String favs;

  const User({
    @required this.imagepath,
    @required this.name,
    @required this.email,

    @required this.isDarkMode,
    @required this.favs,
  });
}