//Animations

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animasyon"),
        ),
        body: AnimationPage(),
      ),
    );
  }
}

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<Color?> _colorAnimation2;
  late Animation<double?> _rotationAnimation;
  late Animation<double?> _rotationAnimation2;
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat(reverse: true);

    _colorAnimation =
        ColorTween(begin: Colors.blue, end: Colors.red).animate(_controller);
    _colorAnimation2 =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(_controller);

    _rotationAnimation =
        Tween<double>(begin: 0, end: 2 * 3.14).animate(_controller);

    _rotationAnimation2 =
        Tween<double>(begin: 1 * 3.14, end: 0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _rotationAnimation.value!,
          child: Container(
            height: 250,
            color: _colorAnimation.value,
            alignment: Alignment.center,
            child: Transform.rotate(
              angle: _rotationAnimation2.value!,
              child: Text(
                "Hello world",
                style: TextStyle(fontSize: 36, color: _colorAnimation2.value),
              ),
            ),
          ),
        );
      },
    );
  }
}
