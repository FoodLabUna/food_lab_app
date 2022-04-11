import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'base_screen_controller.g.dart';

class BaseScreenController = _BaseScreenControllerBase
    with _$BaseScreenController;

abstract class _BaseScreenControllerBase with Store {
  final pageController = PageController();

  @observable
  int selectedIndex = 0;

  @observable
  String? label;

  @action
  setLabel(String? value) => label = value;

  String? get tituloHome {
    String? _result = 'Home';
    return _result;
  }

  @action
  onSelectTab(index) {
    mudarTela(index);

    if (index == 0) {
      label = tituloHome;
    } else if (index == 1) {
      label = 'Histórico de Análises';
    } else {
      label = '';
    }

    selectedIndex = index;
  }

  @action
  void mudarTela(int value) {
    pageController.animateToPage(
      value,
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }
}
