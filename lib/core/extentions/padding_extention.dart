import 'package:flutter/material.dart';

extension PaddingExtention on Widget {
  Widget withPadding(EdgeInsetsGeometry padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }
}
