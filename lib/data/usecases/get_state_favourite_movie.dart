import 'package:movie_app/core/data/usecase.dart';
import 'package:movie_app/data/repositories/home/app.repositories.dart';

class GetStateFavMovie extends BaseUsecase<bool, String> {
  final AppRepositories _repository;

  const GetStateFavMovie(this._repository);

  @override
  Future<bool> call(String params) async {
    return _repository.getStateFavMovie(params);
  }
}
