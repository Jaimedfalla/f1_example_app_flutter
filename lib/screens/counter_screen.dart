import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void increase() => setState(() => _counter ++);
  void decrease() => setState(() =>{
    if(_counter > 0){
        _counter --
    }
});
  void reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 =  TextStyle(
      fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        elevation: 0,
      ),
      body: Center(// El Widget Center alinea horizontalmente
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Para ubicar verticalmente
          children: <Widget> [
            const Text("Clicks",style: fontSize30),
            Text('$_counter',style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn:increase,
        decreaseFn: decrease,
        resetFn: reset),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn}
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.add)
        ),

        FloatingActionButton(
          onPressed: ()=>resetFn(),
          child: const Icon(Icons.close)
        ),

        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}