import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/extensions/string.dart';
import 'package:movie_app/core/widgets/app.imdb_icon.dart';
import 'package:movie_app/core/widgets/app.rating.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';
import 'package:movie_app/core/widgets/app_button.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/image_view_movie_detail.dart';

class HeaderMovieDetail extends StatelessWidget {
  final String posterUrl;
  final String title;
  final String year;
  final String duration;
  final List<String> genres;
  final List<int> ratings;
  final String imdbRating;
  final EdgeInsets padding;

  const HeaderMovieDetail({
    super.key,
    required this.posterUrl,
    required this.title,
    required this.year,
    required this.duration,
    required this.genres,
    required this.ratings,
    required this.imdbRating,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: _buildImage(),
              ),
              context.spaceBox(w: 16),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildTitle(),
                    context.spaceBox(h: 4),
                    _buildWrapYearAndDuration(),
                    context.spaceBox(h: 4),
                    _buildGenres(),
                    context.spaceBox(h: 4),
                    _buildRating(),
                    context.spaceBox(h: 4),
                    _buildIMDbScore(),
                  ],
                ),
              ),
            ],
          ),
          _buildButton(context)
        ],
      ),
    );
  }

  Widget _buildImage() {
    return ImageViewMovieDetail(posterUrl);
  }

  Widget _buildTitle({
    TextStyle style = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
  }) {
    return Typographies.title(
      title,
      style: style,
      maxLines: 3,
    );
  }

  Widget _buildWrapYearAndDuration({
    int maxLines = 1,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return RichText(
      overflow: overflow,
      maxLines: maxLines,
      text: TextSpan(
        style: Typographies.bodyStyle.copyWith(color: Colors.white),
        children: [
          TextSpan(text: year.toSpecial()),
          TextSpan(text: duration.toFormatDuration()),
        ],
      ),
    );
  }

  Widget _buildGenres({int maxLines = 1}) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      text: TextSpan(
        style: Typographies.bodyStyle.copyWith(color: Colors.white),
        text: genres.toListString(),
      ),
    );
  }

  Widget _buildRating({
    Color color = Colors.amber,
    double fontSize = 16,
  }) {
    return AppRating(
      score: ratings.toRating(),
      color: color,
      fontSize: fontSize,
    );
  }

  Widget _buildIMDbScore({
    TextStyle style = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: Colors.white,
    ),
    WrapAlignment alignment = WrapAlignment.center,
  }) {
    return Wrap(
      alignment: alignment,
      runAlignment: alignment,
      spacing: 10,
      children: [
        const IMDBIcon(),
        Typographies.body(
          imdbRating.toIMDbString(),
          style: style,
        ),
      ],
    );
  }

  _buildButton(BuildContext context) {
    return AppButton(
      "Add to favourites",
      onPressed: () {},
      width: double.infinity,
      margin: context.space(top: 16, bottom: 16),
    );
  }
}
