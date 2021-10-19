import 'dart:math';
import 'package:flutter/material.dart';

class AnimatePager extends StatefulWidget {
  const AnimatePager({Key? key}) : super(key: key);

  @override
  _AnimatePagerState createState() => _AnimatePagerState();
}

class _AnimatePagerState extends State<AnimatePager> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.orange.shade400;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('agrandar'),
        icon: Icon(Icons.play_arrow),
        onPressed: () => _cambiarforma(),
      ),
    );
  }

  void _cambiarforma() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), 
          random.nextInt(255), 
          random.nextInt(255), 
          1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
