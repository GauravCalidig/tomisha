import 'package:flutter/material.dart';

class HBox extends StatelessWidget {
  const HBox(this.h, {this.width, super.key});
  final double h;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: width,
    );
  }
}

class WBox extends StatelessWidget {
  const WBox(this.w, {this.height, super.key});
  final double w;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: height,
    );
  }
}
