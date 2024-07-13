import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColoredLinePainter extends CustomPainter {
  final double progress;
  final double thickness;

  ColoredLinePainter({required this.progress, required this.thickness});

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.round;

    Paint progressPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(Offset(0, size.height / 2),
        Offset(size.width, size.height / 2), backgroundPaint);
    canvas.drawLine(Offset(0, size.height / 2),
        Offset(size.width * progress, size.height / 2), progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class ColoredLine extends StatelessWidget {
  final double progress;
  final double thickness;

  const ColoredLine(
      {super.key, required this.progress, required this.thickness});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: thickness,
      child: CustomPaint(
        size: Size(double.infinity, thickness),
        painter: ColoredLinePainter(progress: progress, thickness: thickness),
      ),
    );
  }
}

class DimensionalLine extends StatelessWidget {
  const DimensionalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 1,
      child: ColoredLine(
        progress: 0.5,
        thickness: 5.h,
      ),
    );
  }
}
