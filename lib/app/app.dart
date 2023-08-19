import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unaslindas/app/config/router/app_route.dart';
import 'package:unaslindas/app/presentation/bloc/auth/authk_bloc.dart';
import 'package:unaslindas/app/presentation/views/Register/register_view.dart';
import 'config/themes/theme.dart';
import 'presentation/views/views_links.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers:  [ BlocProvider<AuthBloc>(
          create: (_)=> AuthBloc(),
      )],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedThemeColor: 5).theme(),
        //home: LoginView(),
        routeInformationProvider: appRouter.routeInformationProvider,
        routeInformationParser: appRouter.routeInformationParser ,
        routerDelegate: appRouter.routerDelegate,
      ),
    );
  }
}
