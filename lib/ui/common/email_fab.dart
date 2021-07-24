import 'package:flutter/material.dart';

import 'dart:ui' as ui;

class EmailFAB extends StatelessWidget {
  const EmailFAB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark ? null : Colors.white,
      // child: ShaderMask(
      //   shaderCallback: (Rect bounds) {
      //     return RadialGradient(
      //       center: Alignment.center,
      //       radius: 1.0,
      //       colors: <Color>[
      //         Colors.yellowAccent,
      //         Colors.blueAccent,
      //         Colors.redAccent,
      //         Colors.greenAccent,
      //       ],
      //       tileMode: TileMode.mirror,
      //     ).createShader(bounds);
      //   },
      //   child: Icon(Icons.add, size: 40.0),
      // ),
      child: CustomPaint(
        child: Container(),
        foregroundPainter: FloatingPainter(),
      ),
      onPressed: () {},
    );
  }
}

class FloatingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint troubaPaint = Paint()
      ..strokeWidth = 5
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.27, size.height * 0.5),
          Offset(size.width - (size.width * 0.27), size.height * 0.5),
        [
          Colors.blue,
          Colors.red,
        ],
      );


    canvas.drawLine(Offset(size.width * 0.27, size.height * 0.5),
        Offset(size.width * 0.5, size.height * 0.5), troubaPaint);
    canvas.drawLine(
        Offset(size.width * 0.5, size.height * 0.5),
        Offset(size.width * 0.5, size.height - (size.height * 0.27)), troubaPaint );
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.5),
        Offset(size.width - (size.width * 0.27), size.height * 0.5), troubaPaint);
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.5),
        Offset(size.width * 0.5, size.height * 0.27), troubaPaint);
  }

  @override
  bool shouldRepaint(FloatingPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(FloatingPainter oldDelegate) => false;
}
