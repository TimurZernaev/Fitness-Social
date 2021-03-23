import 'package:fitness/constants.dart';
import 'package:flutter/cupertino.dart';

class ColorDot extends StatelessWidget {
  ColorDot({
    Key key,
    this.size,
    this.color,
    this.child,
  }) : super(key: key);

  final double size;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: this.child ?? SizedBox(),
    );
  }
}

class DoubleColorDot extends StatelessWidget {
  DoubleColorDot({
    Key key,
    this.size,
    this.spacing,
    this.color,
    this.borderWidth,
    this.child,
  }) : super(key: key);

  final double size, spacing, borderWidth;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(spacing ?? 1),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: white,
          border: Border.all(color: color, width: borderWidth ?? 2)),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: this.child ?? SizedBox(),
      ),
    );
  }
}
