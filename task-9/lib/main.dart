import 'dart:math';
import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with TickerProviderStateMixin {
  final colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.purple
  ];

  final random = Random();

  var colorIndex = 0;

  void changeIndex() {
    setState(() {
      colorIndex = random.nextInt(5);
    });
    print('Change color');
  }

  void changeSize() {
    setState(() {
      selected = !selected;
    });
    print('Change size');
  }

  void changeAnimation() {
    if (playAnimation)
      _controller.reset();
    else
      _controller.repeat();
    setState(() {
      playAnimation = !playAnimation;
    });
    print('Animation');
  }

  void changePosition(details) {
    setState(() {
      offset =
          Offset(offset.dx + details.delta.dx, offset.dy + details.delta.dy);
    });
    print('Change position');
  }

  var selected = false;

  var playAnimation = false;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )
      //..repeat()
      ;
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: offset.dx,
          top: offset.dy,
          child: GestureDetector(
              onDoubleTap: changeIndex,
              onPanUpdate: changePosition,
              onTap: changeSize,
              onLongPress: changeAnimation,
              child: RotationTransition(
                turns: _animation,
                child: AnimatedContainer(
                  width: selected ? 200.0 : 300.0,
                  height: selected ? 200.0 : 300.0,
                  color: colors[colorIndex],
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                ),
              )),
        ),
      ],
    );
  }
}
