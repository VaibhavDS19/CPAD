import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum PropEnum { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(this.delay, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<PropEnum>()
      ..add(PropEnum.opacity, Tween(begin: 0.0, end: 1.0))
      ..add(PropEnum.translateY, Tween(begin: -30.0, end: 0.0), Duration(milliseconds: 500), Curves.easeOut);

    return PlayAnimation<MultiTweenValues<PropEnum>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, animation) => Opacity(
        opacity: animation.get(PropEnum.opacity),
        child: Transform.translate(
            offset: Offset(0, animation.get(PropEnum.translateY)),
            child: child
        ),
      ),
    );
  }
}