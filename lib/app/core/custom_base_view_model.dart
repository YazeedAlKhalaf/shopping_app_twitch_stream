
import 'package:shopping_app/app/locator/locator.dart';
import 'package:shopping_app/app/services/router_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

abstract class CustomBaseViewModel extends BaseViewModel {
  final RouterService _routerService = locator<RouterService>();

  void goBack() {
    _routerService.router.pop();
  }

  void removeFocus() {
    FocusManager.instance.primaryFocus!.unfocus();
  }
}