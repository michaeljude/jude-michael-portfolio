import 'package:flutter/material.dart';

import '../../app/theme/color_tokens.dart';

class GridBackground extends StatelessWidget {
  const GridBackground({
    super.key,
    this.cellSize = 40,
    this.majorLineEvery = 5,
  });

  final double cellSize;
  final int majorLineEvery;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: CustomPaint(
        painter: _GridBackgroundPainter(
          cellSize: cellSize,
          majorLineEvery: majorLineEvery,
        ),
      ),
    );
  }
}

class _GridBackgroundPainter extends CustomPainter {
  const _GridBackgroundPainter({
    required this.cellSize,
    required this.majorLineEvery,
  });

  final double cellSize;
  final int majorLineEvery;

  @override
  void paint(Canvas canvas, Size size) {
    final minorPaint = Paint()
      ..color = AppColorTokens.gridLine
      ..strokeWidth = 1;
    final majorPaint = Paint()
      ..color = AppColorTokens.gridLineStrong
      ..strokeWidth = 1;

    var lineIndex = 0;
    for (double x = 0; x <= size.width; x += cellSize, lineIndex++) {
      final paint = lineIndex % majorLineEvery == 0 ? majorPaint : minorPaint;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    lineIndex = 0;
    for (double y = 0; y <= size.height; y += cellSize, lineIndex++) {
      final paint = lineIndex % majorLineEvery == 0 ? majorPaint : minorPaint;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant _GridBackgroundPainter oldDelegate) {
    return oldDelegate.cellSize != cellSize ||
        oldDelegate.majorLineEvery != majorLineEvery;
  }
}
