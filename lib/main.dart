import 'package:app_flutter/router/app_routes.dart';
import 'package:app_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'F1 App',
      initialRoute: AppRoutes.initialRouter,
      routes: AppRoutes.getMenuRoutes(),
      /*Para crear una ruta por defecto sobre todo para cuando
      * la ruta a donde nos queremos redirigir no existe */
      onGenerateRoute: AppRoutes.onGenerateRout,
      theme: AppTheme.lightTheme
    );
  }
}