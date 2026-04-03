import 'package:flutter/widgets.dart';

class MaxWidth extends StatelessWidget {
  const MaxWidth({
    super.key,
    this.maxWidth = 1280,
    this.padding = EdgeInsets.zero,
    required this.child,
  });

  final double maxWidth;
  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Padding(padding: padding, child: child),
      ),
    );
  }
}
