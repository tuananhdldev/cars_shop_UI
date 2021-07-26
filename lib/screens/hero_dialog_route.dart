import 'package:flutter/material.dart';

class HeroDialogRoute<T> extends PageRoute<T>
{
  final WidgetBuilder _builder;
  HeroDialogRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool fullscreenDialog = true
}): _builder = builder, super(settings: settings,fullscreenDialog: fullscreenDialog);

  @override
  Color? get barrierColor => Colors.black54;

  @override
  String? get barrierLabel => 'Popup dialog open';

  @override
  bool get barrierDismissible => true;

  @override

  bool get opaque => true;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {

    return _builder(context);
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 1000);



}