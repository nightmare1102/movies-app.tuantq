import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/extensions/navigater.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/action_wrapper.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/app_bar_movie_detail.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/header_movie_detail.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/image_view_movie_detail.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/summary_detail_movie.dart';

@RoutePage()
class MovieDetailScreen extends StatelessWidget {
  final Movie movie;
  final bool extendBodyBehindAppBar;

  const MovieDetailScreen({
    super.key,
    required this.movie,
    this.extendBodyBehindAppBar = true,
  });

  void _onSaveMovie() {}

  Future<void> _onRefreshMovie() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ...buildBackgroundPoster(context),
          CustomScrollView(
            slivers: [
              ..._buildAppBar(context),
              SliverToBoxAdapter(
                child: _headerMovie(),
              ),
              SliverToBoxAdapter(
                child: _actionMovie(),
              ),
              SliverToBoxAdapter(
                child: _summaryMovie(context),
              )
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSaveIcon() {
    return [
      IconButton(
        onPressed: _onSaveMovie,
        icon: Assets.images.svg.icSave.svg(),
      ),
    ];
  }

  Widget _buildBackIcon(BuildContext context) {
    return IconButton(
      onPressed: () => context.onBackPressed(),
      icon: Assets.images.svg.icBack.svg(),
    );
  }

  List<Widget> buildBackgroundPoster(BuildContext context) {
    return [
      ImageViewMovieDetail(
        movie.posterUrl,
        height: context.height() / 3,
        fit: BoxFit.fill,
      ),
      ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
          ),
        ),
      ),
    ];
  }

  _buildAppBar(BuildContext context) {
    return [
      SliverAppBarMovieDetail(
        leading: _buildBackIcon(context),
        actions: _buildSaveIcon(),
      ),
      CupertinoSliverRefreshControl(
        onRefresh: _onRefreshMovie,
      )
    ];
  }

  Widget _headerMovie() {
    return HeaderMovieDetail(
      posterUrl: movie.posterUrl,
      title: movie.title,
      year: movie.year,
      duration: movie.duration,
      genres: movie.genres,
      ratings: movie.ratings,
      imdbRating: movie.imdbRating,
    );
  }

  _actionMovie() {
    return ActionWrap(
      onRateMovie: () {},
      onShareMovie: () {},
      onRemindMeMovie: () {},
    );
  }

  _summaryMovie(BuildContext context) {
    return SummaryMovieDetail(
      description: movie.storyLine,
      actors: movie.actors,
    );
  }
}
