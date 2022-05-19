// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BaseScreenController on _BaseScreenControllerBase, Store {
  final _$selectedIndexAtom =
      Atom(name: '_BaseScreenControllerBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$imageFileAtom = Atom(name: '_BaseScreenControllerBase.imageFile');

  @override
  File? get imageFile {
    _$imageFileAtom.reportRead();
    return super.imageFile;
  }

  @override
  set imageFile(File? value) {
    _$imageFileAtom.reportWrite(value, super.imageFile, () {
      super.imageFile = value;
    });
  }

  final _$labelAtom = Atom(name: '_BaseScreenControllerBase.label');

  @override
  String? get label {
    _$labelAtom.reportRead();
    return super.label;
  }

  @override
  set label(String? value) {
    _$labelAtom.reportWrite(value, super.label, () {
      super.label = value;
    });
  }

  final _$getFromGalleryAsyncAction =
      AsyncAction('_BaseScreenControllerBase.getFromGallery');

  @override
  Future<void> getFromGallery() {
    return _$getFromGalleryAsyncAction.run(() => super.getFromGallery());
  }

  final _$getFromCameraAsyncAction =
      AsyncAction('_BaseScreenControllerBase.getFromCamera');

  @override
  Future<void> getFromCamera() {
    return _$getFromCameraAsyncAction.run(() => super.getFromCamera());
  }

  final _$_BaseScreenControllerBaseActionController =
      ActionController(name: '_BaseScreenControllerBase');

  @override
  dynamic setLabel(String? value) {
    final _$actionInfo = _$_BaseScreenControllerBaseActionController
        .startAction(name: '_BaseScreenControllerBase.setLabel');
    try {
      return super.setLabel(value);
    } finally {
      _$_BaseScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setImageFile(File value) {
    final _$actionInfo = _$_BaseScreenControllerBaseActionController
        .startAction(name: '_BaseScreenControllerBase.setImageFile');
    try {
      return super.setImageFile(value);
    } finally {
      _$_BaseScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onSelectTab(dynamic index) {
    final _$actionInfo = _$_BaseScreenControllerBaseActionController
        .startAction(name: '_BaseScreenControllerBase.onSelectTab');
    try {
      return super.onSelectTab(index);
    } finally {
      _$_BaseScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void mudarTela(int value) {
    final _$actionInfo = _$_BaseScreenControllerBaseActionController
        .startAction(name: '_BaseScreenControllerBase.mudarTela');
    try {
      return super.mudarTela(value);
    } finally {
      _$_BaseScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
imageFile: ${imageFile},
label: ${label}
    ''';
  }
}
