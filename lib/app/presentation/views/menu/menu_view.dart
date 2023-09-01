import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unaslindas/app/presentation/views/Register/register_view.dart';
import 'package:unaslindas/app/presentation/views/agendamiento/cita_view.dart';
import 'package:unaslindas/app/presentation/views/contactos/contactos_view.dart';
import 'package:unaslindas/app/presentation/views/login/login_view.dart';
import 'package:unaslindas/app/presentation/views/servicio/servicio_view.dart';

void main() {
  runApp(
    MaterialApp(
      home: MenuView(),
    ),
  );
}

class MenuView extends StatelessWidget {
  static const String name = 'menu_view';

  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        //este es para hacer el cuadro
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          primary: false,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CitasView()),
                );
              },
              child: Card(
                //este es para poner los bordes de los cuadros
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                //este es para el alineamiento de la imagen
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/calendar-svgrepo-com.svg',
                      height: 120,
                    ),
                    Text("Agenda"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ServicioView()),
                );
                // Agrega el código para navegar a la pantalla de Servicios
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/pen-solid.svg', // Cambia por la ruta de tu otra imagen
                      height: 120,
                    ),
                    Text("Servicios"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Agrega el código para navegar a la pantalla de Ubicación
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/map-svgrepo-com.svg',
                      height: 120,
                    ),
                    Text("Ubicación"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ContactoView()),
                );
                // Agrega el código para navegar a la pantalla de Contactos
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/icons8-call.svg',
                      height: 120,
                    ),
                    Text("Contactos"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginView()),
                );
                // Agrega el código para navegar a la pantalla de Contactos
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/signout-svgrepo-com (1).svg',
                      height: 120,
                    ),
                    Text("Cerra sesion"),
                  ],
                ),
              ),
            ),
            // Agrega más instancias de GestureDetector con Card si es necesario
          ],
        ),
      ),
    );
  }
}
