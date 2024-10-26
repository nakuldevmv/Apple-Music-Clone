import 'package:flutter/material.dart';

class WebView extends StatelessWidget {
  final Widget? child;
  final double? innerContainerHeight;
  final double? innerContainerWidth;
  final Color shadowColor;
  final double shadowBlurRadius;
  final double shadowSpreadRadius;
  final Color innerContainerColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final List<Color> gradientColors;
  final List<double> gradientStops;

  const WebView({
    super.key,
    this.child,
    this.innerContainerHeight = 866,
    this.innerContainerWidth = 400,
    this.shadowColor = Colors.black54,
    this.shadowBlurRadius = 10.0,
    this.shadowSpreadRadius = 2.0,
    this.innerContainerColor = Colors.black87,
    this.borderRadius = 15.0,
    this.padding = const EdgeInsets.all(8.0),
    this.gradientColors = const [
      Color(0xff536976),
      Color(0xff292e49),
    ],
    this.gradientStops = const [
      0,
      1
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            stops: gradientStops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: padding,
            child: Container(
              height: innerContainerHeight,
              width: innerContainerWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius),
                ),
                color: innerContainerColor,
                boxShadow: [
                  BoxShadow(
                    color: shadowColor,
                    blurRadius: shadowBlurRadius,
                    spreadRadius: shadowSpreadRadius,
                    offset: const Offset(0, 4), // Adds a slight downward shadow
                  ),
                ],
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(borderRadius),
                  ),
                  child: child),
            ),
          ),
        ),
      ),
    );
  }
}
