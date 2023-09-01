import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: ContactoView(),
    ),
  );
}


class ContactoView extends StatelessWidget {
  static const String name = 'contacto_view';

  const ContactoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:Text("Contactos")

      ),

    );
  }
}