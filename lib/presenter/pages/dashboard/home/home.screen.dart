import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/extensions/navigater.dart';
import 'package:movie_app/core/widgets/app.empty_data.dart';
import 'package:movie_app/core/widgets/app.shimmer_loading.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';
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
    _bloc.add(const RefreshMoviesStarted());
    return _bloc.stream.firstWhere((state) => state.status != AppStatus.refreshing);
  }

  void _onMovieDetailPressed(BuildContext context, Movie movie) {
    context.navigate(MovieDetailRoute(movie: movie));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CupertinoSliverRefreshControl(
            onRefresh: _onRefresh,
          ),
          _buildMovies(),
        ],
      ),
    );
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

  _buildAppTitle() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.zero,
      child: Wrap(
        direction: Axis.vertical,
        children: [
          Typographies.title(
            "Hello, Tran Quoc Tuan",
          ),
          Typographies.body(
            "Let's watch your favorite movie!",
          ),
        ],
      ),
    );
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
    return AppMoviesSelector(
      builder: (List<Movie> movies) {
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

  _buildIconUser() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.account_circle,
        size: 28,
      ),
    );
  }
}
