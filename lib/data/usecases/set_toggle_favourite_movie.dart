import 'package:movie_app/core/data/usecase.dart';
import 'package:movie_app/data/repositories/home/app.repositories.dart';

class SetToggleFavMovie extends BaseUsecase<void, String> {
  final AppRepositories _repository;

  const SetToggleFavMovie(this._repository);

  @override
  Future<void> call(String params) async {
    await _repository.setToggleFavMovie(params);
  }
}
