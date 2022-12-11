import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false, //Indica que el diálogo se cierra haciendo click sobre cualquier parte sombreada de la pantalla
      context: context,
      builder: (context){
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: const Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 10),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'))
          ],
        );
      }
    );
  }
  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 10),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'))
          ]
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Center(
         child: ElevatedButton(
          onPressed: () => Platform.isIOS? //Saber la plataforma sobre la que corre la app
            displayDialogIOS(context):
            displayDialogAndroid(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15
            ),
            child: Text(
              'Mostrar Alerta',
              style: TextStyle(
                fontSize: 16
              ),
            ),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}