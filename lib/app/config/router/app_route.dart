//Este archivo se encarga de manejar las rutas de la aplicación
//Se debe importar el archivo de la vista que se desea mostrar
//Se debe agregar la ruta en el Map de rutas

import 'package:go_router/go_router.dart';
import 'package:unaslindas/app/presentation/views/agendamiento/cita_view.dart';
import 'package:unaslindas/app/presentation/views/contactos/contactos_view.dart';

import 'package:unaslindas/app/presentation/views/login/forgot_password/forgot_%20password_view.dart';
import 'package:unaslindas/app/presentation/views/menu/menu_view.dart';
import 'package:unaslindas/app/presentation/views/servicio/servicio_view.dart';



//Archivo que contiene los links de las vistas
import 'package:unaslindas/app/presentation/views/views_links.dart';
import 'package:supabase_flutter/supabase_flutter.dart';





final appRouter = GoRouter(
  //La ruta inicial de la aplicación
  initialLocation: '/',
  // rutas de la aplicación
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        if(Supabase.instance.client.auth.currentUser != null){
          return const HomeView();
        } else {
          return LoginView();
        }
      },
    ),
    GoRoute(
      path: '/home',
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/register',
      name: RegisterView.name,
      builder: (context, state) => RegisterView(),
    ),
    GoRoute(
      path: '/login',
      name: LoginView.name,
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      path: '/forgot_password',
      name: ForgotPasswordView.name,
      builder: (context, state) => ForgotPasswordView(),
    ),
    GoRoute(
      path: '/citas_view',
      name: CitasView.name,
      builder: (context, state) => CitasView(),
    ),
    GoRoute(
      path: '/menu_view',
      name: MenuView.name,
      builder: (context, state) => MenuView(),
    ),
    GoRoute(
      path: '/servicio_view',
      name: ServicioView.name,
      builder: (context, state) => ServicioView(),
    ),
    GoRoute(
      path: '/contacto_view',
      name: ContactoView.name,
      builder: (context, state) => ContactoView(),
    )


  ],

);







