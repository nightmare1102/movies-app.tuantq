import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/extensions/navigater.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/data/entities/remote/movie.remote.dart' as remote;
import 'package:movie_app/data/entities/translator/movie.translator.dart';
import 'package:movie_app/data/sources/mock/mock.data_source.dart';
import 'package:movie_app/di/injecter.dart';
import 'package:movie_app/env.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presenter/blocs/app_blocs.dart';
import 'package:movie_app/presenter/blocs/app_events.dart';
import 'package:movie_app/presenter/blocs/app_selectors.dart';
import 'package:movie_app/presenter/blocs/app_status.dart';
import 'package:movie_app/presenter/navigation/navigation.dart';
import 'package:movie_app/presenter/pages/dashboard/home/widgets/item_movie.dart';
import 'package:shimmer/shimmer.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _bloc = provider.get<AppBlocs>();

  @override
  void initState() {
    super.initState();
    scheduleMicrotask(() {
      _bloc.add(const GetMoviesStarted());
    });
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  Future _onRefresh() async {
    _bloc.add(const GetMoviesStarted());
    return _bloc.stream.firstWhere((state) => state.status != AppStatus.refreshing);
  }

  void _onMovieDetailPressed(BuildContext context, Movie movie) {
    context.navigate(MovieDetailRoute(movie: movie));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            ..._buildAppBar(),
            _buildMovies(),
          ],
        ),
      ),
    );
  }

  _buildAppBar({
    bool pinned = true,
    double elevation = 0.1,
  }) {
    return [
      SliverAppBar(
        elevation: elevation,
        title: _buildTitle(),
        actions: _buildNotifyIcon(),
        pinned: pinned,
      ),
      CupertinoSliverRefreshControl(
        onRefresh: _onRefresh,
      ),
    ];
  }

  Widget _buildMovies() {
    return AppStatusSelector(
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
    );
  }

  List<Widget> _buildNotifyIcon() {
    return [
      IconButton(
        onPressed: () {
          //TODO: handle navigate to notification page
        },
        icon: Assets.images.svg.icNotification.svg(),
      )
    ];
  }

  _buildTitle() {
    return Text(AppEnv.appName);
  }

  Widget _buildLoading() {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Shimmer.fromColors(
                baseColor: Colors.transparent,
                highlightColor: Colors.white.withOpacity(0.25),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 170,
                  width: context.width() / 3,
                ),
              ),
              context.spaceBox(w: 8),
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: Colors.transparent,
                  highlightColor: Colors.white.withOpacity(0.25),
                  child: Container(
                    height: 170,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildError() {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 24),
        child: Center(
          child: Text(
            "Unable to connect to server.\nPlease try again!",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget _buildSuccess() {
    return AppMoviesSelector(
      builder: (List<Movie> movies) {
        print(movies.length);
        return SliverList.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return ItemMovie(
              movie: movie,
              onItemPressed: () => _onMovieDetailPressed(context, movie),
            );
          },
        );
      },
    );
  }
}
