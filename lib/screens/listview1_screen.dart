import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Megaman','Metal Gear','Super Smash','Final Fantasy'];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View tipo 1"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title:Text( options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          onTap: (){
            final game = options[index];
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}