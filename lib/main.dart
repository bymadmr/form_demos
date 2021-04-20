import 'package:flutter/material.dart';
import 'package:form_demos/screens/customer_add.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Customer Save"),
          ),
          body: CustomerAdd(),
        ));
  }
}
