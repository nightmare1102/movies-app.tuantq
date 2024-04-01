import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/app.network_image.dart';

class ImageViewMovieDetail extends StatelessWidget {
  final String url;
  final double height;
  final BoxFit fit;
  final double width;
  final BorderRadius borderRadius;

  const ImageViewMovieDetail(
    this.url, {
    super.key,
    this.height = 200,
    this.width = double.infinity,
    this.fit = BoxFit.cover,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: AppNetworkImage(
          imageUrl: url,
          fit: fit,
        ),
      ),
    );
  }
}
