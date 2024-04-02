import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  final Widget child;
  final Color baseColor;
  final Color highlightColor;

  const ShimmerLoading(
      {super.key,
      required this.child,
      this.baseColor = Colors.transparent,
      this.highlightColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor.withOpacity(0.25),
      child: child,
    );
  }
}
