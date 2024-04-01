import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/extensions/string.dart';

class SummaryMovieDetail extends StatelessWidget {
  final String description;
  final List<String> actors;
  final EdgeInsets padding;
  final TextStyle textStyleTitle;
  final TextStyle textStyleContent;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  const SummaryMovieDetail({
    super.key,
    required this.description,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.textStyleTitle = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    this.textStyleContent = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.actors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        children: [_buildSummary(context), _buildAuthor(context)],
      ),
    );
  }

  Widget _buildTitle({required String title}) {
    return Text(
      title,
      style: textStyleTitle,
    );
  }

  Widget _buildContent({required String content}) {
    return Text(
      content,
      style: textStyleContent,
    );
  }

  Widget _buildSummary(BuildContext context, {String title = "Summaries: "}) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        context.spaceBox(h: 24),
        _buildTitle(title: title),
        context.spaceBox(h: 8),
        _buildContent(content: description),
      ],
    );
  }

  Widget _buildAuthor(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        context.spaceBox(h: 24),
        _buildTitle(title: "Actors: "),
        context.spaceBox(h: 8),
        _buildContent(content: actors.toListString()),
      ],
    );
  }
}
