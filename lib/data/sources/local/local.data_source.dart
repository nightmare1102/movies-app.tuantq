abstract class LocalDataSource {
  Future<List<String>> getFavoriteMovieIds();

  Future<void> toggleFavoriteMovie(String id);

  Future<bool> getStateFavoriteMovie(String id);

  Future<void> clearAll();
}
