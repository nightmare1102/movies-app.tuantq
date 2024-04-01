import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/navigater.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/data/entities/remote/movie.remote.dart' as remote;
import 'package:movie_app/data/entities/translator/movie.translator.dart';
import 'package:movie_app/data/sources/mock/mock.data_source.dart';
import 'package:movie_app/env.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presenter/navigation/navigation.dart';
import 'package:movie_app/presenter/pages/dashboard/home/widgets/item_movie.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final mockMovies = dataMovies.map((e) => remote.Movie.fromJson(e)).toList().toMovies();

  Future<void> _onRefresh() async {
    //TODO: handle refresh data
  }

  void _onMovieDetailPressed(BuildContext context, Movie movie) {
    context.navigate(MovieDetailRoute(movie: movie));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ..._buildAppBar(),
          _buildMovies(),
        ],
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
    return SliverList.builder(
      itemCount: mockMovies.length,
      itemBuilder: (context, index) {
        final movie = mockMovies[index];
        return ItemMovie(
          movie: movie,
          onItemPressed: () => _onMovieDetailPressed(context, movie),
        );
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
}
