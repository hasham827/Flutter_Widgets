import 'package:flutter/material.dart';
import 'package:widgets_demo/examples/list_view/contact_page.dart';

Widget main() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Using Listview"),
      ),
      body: ContactPage(),
    ),
  );
}
