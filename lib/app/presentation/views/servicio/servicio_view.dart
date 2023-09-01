import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: ServicioView(),
    ),
  );
}


class ServicioView extends StatelessWidget {
  static const String name = 'servicio_view';

  const ServicioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
       title:Text("servicios")

     ),

    );
  }
}