import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ott_app/app.dart';
import 'package:ott_app/contexts/detail.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AnnotatedRegion(
      //Changing the status bar style to be transparent
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
      child: ChangeNotifierProvider(
          create:(context)=> Detail(),
          child: MyApp())));
}
