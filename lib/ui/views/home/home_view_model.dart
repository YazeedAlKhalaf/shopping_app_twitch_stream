import 'package:flutter/cupertino.dart';
import 'package:shopping_app/app/core/custom_base_view_model.dart';

class HomeViewModel extends CustomBaseViewModel {
  final ScrollController scrollController = ScrollController();

  double _titleTextSize = 25;
  double get titleTextSize => _titleTextSize;
  void setTitleTextSize(double newValue) {
    _titleTextSize = newValue;
    notifyListeners();
  }

  Future<void> init() async {
    scrollController.addListener(() {
      print(scrollController.position.pixels);
      setTitleTextSize(scrollController.position.pixels.clamp(15, 50));
    });
  }
}
