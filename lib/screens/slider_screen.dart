import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            // divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                    print(value);
                  }
                : null,
          ),

          // Checkbox(
          //   value: _sliderEnable,
          //   onChanged: (value) {
          //     _sliderEnable = value ?? true;
          //     setState(() {});
          //   },
          // ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() {
            _sliderEnable = value ?? true;
          },),),

          // Switch(value: _sliderEnable, onChanged: (value) => setState(() {
          //   _sliderEnable = value;
          // },),),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() {
            _sliderEnable = value;
          },),),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://assets2.razerzone.com/pages/barracuda-x-4c578898e8144ee8da21dde32b7a9f5f/barracuda-x_clarity_desktop.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          // const SizedBox(height: 50,)
        ],
      ),
    );
  }
}
