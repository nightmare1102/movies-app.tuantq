import 'dart:async';
import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/extensions/navigater.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/di/injecter.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/bloc/detail_bloc.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/bloc/detail_event.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/bloc/detail_selector.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/action_wrapper.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/app_bar_movie_detail.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/header_movie_detail.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/image_view_movie_detail.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/widgets/summary_detail_movie.dart';

@RoutePage()
class MovieDetailScreen extends StatefulWidget {
  final Movie movie;
  final bool extendBodyBehindAppBar;

  const MovieDetailScreen({
    super.key,
    required this.movie,
    this.extendBodyBehindAppBar = true,
  });

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  final _bloc = provider.get<MovieDetailBloc>();

  @override
  void initState() {
    _bloc.add(GetStateFavouriteMovie(widget.movie.id));
    super.initState();
  }

  void _onSaveMovie() {
    _bloc.add(ToggleFavouriteMovie(widget.movie.id));
  }

  Future<void> _onRefreshMovie() async {
    //TODO: handle call api refresh movie detail page
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
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
      ),
    );
  }

  List<Widget> _buildSaveIcon() {
    return [
      AppStateFavMoviesSelector(
        builder: (isFav) {
          return IconButton(
            onPressed: _onSaveMovie,
            icon: isFav
                ? Assets.images.svg.icFavChecked.svg()
                : Assets.images.svg.icFavUnchecked.svg(),
          );
        },
      )
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
        widget.movie.posterUrl,
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
      posterUrl: widget.movie.posterUrl,
      title: widget.movie.title,
      year: widget.movie.year,
      duration: widget.movie.duration,
      genres: widget.movie.genres,
      ratings: widget.movie.ratings,
      imdbRating: widget.movie.imdbRating,
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
      description: widget.movie.storyLine,
      actors: widget.movie.actors,
    );
  }
}
