import 'package:flutter/material.dart';

extension DoubleExtenstion on double {
  Widget get width => SizedBox(width: this);

  Widget get height => SizedBox(height: this);
}
