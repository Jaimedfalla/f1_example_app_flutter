import 'package:f1_example_app_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  double _sliderValue=100;
  bool _enabledSlider=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & checks'),
      ),
      body: Column(
         children: [
          Slider.adaptive(//adaptative ajusta el widget a la visualización de la plataforma
            min: 50,
            max: 400 ,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _enabledSlider? (value){
              _sliderValue = value;
              setState(() {});
            }:null),
            SwitchListTile.adaptive(  
              title: const Text('Enable Slider'),
              activeColor: AppTheme.primary,
              value: _enabledSlider,
              onChanged: (value) => setState(() {_enabledSlider = value;})),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage('https://www.formula1.com/content/dam/fom-website/manual/Misc/2022manual/PostSeason/1388195948.jpg.transform/9col/image.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
         ],
      ),
    );
  }
}