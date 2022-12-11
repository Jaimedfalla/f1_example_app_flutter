import 'package:f1_example_app_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suscribe'),
      ),
      /*SingleChildScrollView se utiliza para desplazar
      * todo el contenido cuando se habilite el teclado del móvil*/
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10
          ),
          child: Column(
            children: const [
              CustomInputField(
                icon: Icons.person,
                hintText: 'User Name',
                labelText: 'Name',
              )
            ],
          ),
        ),
      ),
    );
  }
}