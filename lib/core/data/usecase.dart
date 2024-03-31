import 'dart:async';

abstract class BaseUsecase<T, Params> {
  const BaseUsecase();

  Future<T> execute(Params params);
}

class NoParams {}
