import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class CustomRectTween extends RectTween {
  CustomRectTween({Rect? begin, Rect? end}) : super(begin: begin, end: end);

  @override
  Rect? lerp(double t) {
    final elasticCurveValue = Curves.easeInCubic.transform(t);
    //return Rect.fromCenter(center: Offset(end!.width/2, end!.height/2), width: end!.width, height: end!.height);

    return Rect.fromLTRB(
        lerpDouble(begin?.left, end?.left, elasticCurveValue)!,
        lerpDouble(begin?.top, end?.top, elasticCurveValue)!,
        lerpDouble(begin?.right, end?.right, elasticCurveValue)!,
        lerpDouble(begin?.bottom, end?.bottom, elasticCurveValue)!);
  }
}
