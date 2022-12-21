import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://assets2.razerzone.com/pages/barracuda-x-4c578898e8144ee8da21dde32b7a9f5f/barracuda-x_hero_desktop.jpg', name: 'Razer Barracuda X photo 1',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://assets2.razerzone.com/images/pnx.assets/9a1a0717339c21b8c374cefa91402fca/barracuda-x-effortless-plug-play-desktop.jpg', name: 'Razer Barracuda X photo 2',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://assets2.razerzone.com/pages/barracuda-x-4c578898e8144ee8da21dde32b7a9f5f/barracuda-x_render-middle.jpg',)
        ],
      )
    );
  }
}

