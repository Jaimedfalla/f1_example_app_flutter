import 'package:f1_example_app_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final globalKey = GlobalKey<FormState>();

    final Map<String,String> formValues={
      'first_name': 'Jaime',
      'last_name' : 'Falla',
      'email'     : 'pepito1234@yopmail.com',
      'password'  : '1234567',
      'role'      : 'Suscriptor'
    };

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
          child: Form(
            key: globalKey,
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'User Name',
                  labelText: 'Name',
                  formValues: formValues,
                  formProperty: 'first_name'),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Last Name',
                  labelText: 'Last Name',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Email',
                  labelText: 'Email',
                  inputType:TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Password',
                  labelText: 'Password',
                  isPassword: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'Suscriptor',child: Text('Suscriptor')),
                    DropdownMenuItem(value: 'Sponsor',child: Text('Sponsor')),
                    DropdownMenuItem(value: 'Principal Team',child: Text('Principal Team'))
                  ],
                  onChanged: (value)=>formValues['role']=value??'Suscriptor'),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!globalKey.currentState!.validate()) 
                    {
                      print("invalid form");
                      return;
                    }

                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text("Save"))
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}