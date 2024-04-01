import 'dart:async';

abstract class BaseUsecase<T, Params> {
  const BaseUsecase();

  Future<T> call(Params params);
}

class NoParams {}
