import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

extension NavigatorExt on BuildContext {
  void onBackPressed<T extends Object?>({T? value}) {
    Navigator.pop(this, value);
  }

  void navigate(PageRouteInfo<dynamic> route, {void Function(NavigationFailure)? onFailure}) {
    router.push(route, onFailure: onFailure);
  }
}