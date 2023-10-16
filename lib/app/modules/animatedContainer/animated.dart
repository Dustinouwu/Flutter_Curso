import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedCap extends StatefulWidget {
  const AnimatedCap({super.key});

  @override
  State<AnimatedCap> createState() => _AnimatedCapState();
}

class _AnimatedCapState extends State<AnimatedCap> {

  final random = Random();
  double _widht = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  void _changeContainer() {
    _widht = random.nextInt(350).toDouble();
    _height = random.nextInt(350).toDouble();
    _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(255).toDouble());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: _widht,
                height: _height,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: _borderRadius,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _changeContainer,
            child: Text('Cambiar container'),
          )
        ],
      ),
    );
  }
}
