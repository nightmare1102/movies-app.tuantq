import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/extensions/string.dart';
import 'package:movie_app/core/widgets/app.network_image.dart';
import 'package:movie_app/core/widgets/app.rating.dart';
import 'package:movie_app/core/widgets/app.shimmer_loading.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:shimmer/shimmer.dart';

class ItemMovieLoading extends StatelessWidget {
  const ItemMovieLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          ShimmerLoading(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              height: 170,
              width: context.width() / 3,
            ),
          ),
          context.spaceBox(w: 8),
          Expanded(
            child: ShimmerLoading(
              child: Container(
                color: Colors.white,
                height: 170,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemMovie extends StatelessWidget {
  final Movie movie;
  final Function() onItemPressed;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final Color backgroundColor;

  const ItemMovie({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.movie,
    this.backgroundColor = const Color(0xff1D1C3B),
    required this.onItemPressed,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.padding = const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: backgroundColor,
      onTap: onItemPressed,
      title: Row(
        children: [
          _buildImageItem(context),
          context.spaceBox(w: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Typographies.title(
                  movie.title,
                  maxLines: 2,
                ),
                context.spaceBox(h: 4),
                Typographies.body(
                  movie.storyLine,
                  maxLines: 3,
                ),
                context.spaceBox(h: 8),
                _buildGenres(
                  data: movie.genres,
                  (value, index) => genreItem(value),
                ),
                context.spaceBox(h: 8),
                _buildRating(
                  context,
                  value: movie.ratings,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageItem(
    BuildContext context, {
    double aspectRatio = 85 / 125,
    double? width,
  }) {
    return SizedBox(
      width: width ?? context.width() * 0.25,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: ClipRRect(
          borderRadius: borderRadius,
          child: AppNetworkImage(
            imageUrl: movie.posterUrl,
          ),
        ),
      ),
    );
  }

  Widget _buildTextItem({
    required String title,
    int? maxLine,
    Color? color,
    double? fontSize,
  }) {
    return Typographies.body(
      title,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }

  Widget _buildGenres(
    Widget Function(dynamic value, dynamic index) item, {
    required List<String> data,
    double spacing = 8,
    double runSpacing = 4,
  }) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: data.asMap().map((key, _) => MapEntry(key, item(_, key))).values.toList(),
    );
  }

  Widget genreItem(
    String value, {
    EdgeInsets padding = const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
    Color backgroundColor = Colors.white,
  }) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Typographies.body(
        value,
        style: Typographies.captionStyle.copyWith(
          color: const Color(0xff1D1C3B),
        ),
      ),
    );
  }

  Widget _buildRating(
    BuildContext context, {
    required List<int> value,
    Color color = Colors.amber,
    double fontSize = 16,
  }) {
    return AppRating(
      score: value.toRating(),
      color: color,
      fontSize: fontSize,
    );
  }
}
