import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/extensions/navigater.dart';
import 'package:movie_app/core/widgets/app.empty_data.dart';
import 'package:movie_app/core/widgets/app.shimmer_loading.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/di/injecter.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presenter/blocs/app_blocs.dart';
import 'package:movie_app/presenter/blocs/app_events.dart';
import 'package:movie_app/presenter/blocs/app_selectors.dart';
import 'package:movie_app/presenter/blocs/app_status.dart';
import 'package:movie_app/presenter/navigation/navigation.dart';
import 'package:movie_app/presenter/pages/dashboard/home/widgets/item_movie.dart';
import 'package:shimmer/shimmer.dart';

@RoutePage()
class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  final _bloc = provider.get<AppBlocs>();

  @override
  void initState() {
    super.initState();
    scheduleMicrotask(() {
      _bloc.add(const GetFavouriteMovies());
    });
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  Future<void> _onMovieDetailPressed(Movie movie) async {
    await context.navigate(MovieDetailRoute(movie: movie)).then((_) {
      _bloc.add(const GetFavouriteMovies());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            flexibleSpace: Container(
              padding: context.space(start: 16, end: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  context.spaceBox(h: 8),
                  Typographies.title("Movies Favourites"),
                  context.spaceBox(h: 8),
                  Divider(
                    height: 1,
                    color: Colors.grey.withOpacity(0.25),
                  ),
                ],
              ),
            ),
          ),
          AppStatusSelector(
            builder: (status) {
              switch (status) {
                case AppStatus.initial:
                case AppStatus.loading:
                  return _buildLoading();
                case AppStatus.failure:
                  return _buildError();
                case AppStatus.success:
                case AppStatus.refreshing:
                  return _buildSuccess();
              }
            },
          )
        ],
      ),
    );
  }

  _emptyList() {
    return SliverFillRemaining(
        child: Center(
      child: AppEmptyData(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        icon: Assets.images.svg.isEmptyFavMovie.svg(),
        title: "There is no movie yet!",
        subTitle: "Find your movie by Type title, categories, years, etc",
      ),
    ));
  }

  Widget _buildLoading() {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ItemMovieLoading();
      },
    );
  }

  Widget _buildError() {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 24),
        child: Center(
          child: AppEmptyData(
            title: "Unable to connect to server.",
            subTitle: "Please try again!",
          ),
        ),
      ),
    );
  }

  Widget _buildSuccess() {
    return AppFavMoviesSelector(
      builder: (movies) {
        if (movies.isEmpty) return _emptyList();
        return SliverList.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return ItemMovie(
              movie: movie,
              onItemPressed: () => _onMovieDetailPressed(movie),
            );
          },
        );
      },
    );
  }
}
