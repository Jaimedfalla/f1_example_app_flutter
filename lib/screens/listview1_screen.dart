import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Bahrain International Circuit',
    'Jeddah Street Circuit',
    'Albert Park',
    'Autodromo Enzo e Dino Ferrari',
    'Miami International Autodrome',
    'Circuit de Catalunya',
    'Circuit de Monaco',
    'Baku City Circuit',
    'Circuit Gilles Villeneuve',
    'Circuit Silverstone',
    'Red Bull Ring',
    'Circuit Paul Ricard',
    'Hungaroring',
    'Spa-Francorchamps',
    'Circuit Zandvoort',
    'Autodromo Nazionale Monza',
    'Marina Bay Street Circuit',
    'Suzuka Circuit',
    'Circuit of the Americas',
    'Autodromo Hermanos Rodriguez',
    'Autodromo Jose Carlos Pace Interlagos',
    'Yas Marina Circuit'
  ];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circuits"),
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