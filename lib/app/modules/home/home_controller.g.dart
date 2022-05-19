// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$imageFileAtom = Atom(name: '_HomeControllerBase.imageFile');

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

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$showResultAtom = Atom(name: '_HomeControllerBase.showResult');

  @override
  bool get showResult {
    _$showResultAtom.reportRead();
    return super.showResult;
  }

  @override
  set showResult(bool value) {
    _$showResultAtom.reportWrite(value, super.showResult, () {
      super.showResult = value;
    });
  }

  final _$typeAtom = Atom(name: '_HomeControllerBase.type');

  @override
  String get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(String value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$accAtom = Atom(name: '_HomeControllerBase.acc');

  @override
  String get acc {
    _$accAtom.reportRead();
    return super.acc;
  }

  @override
  set acc(String value) {
    _$accAtom.reportWrite(value, super.acc, () {
      super.acc = value;
    });
  }

  final _$uploadfileAsyncAction = AsyncAction('_HomeControllerBase.uploadfile');

  @override
  Future<dynamic> uploadfile(File file) {
    return _$uploadfileAsyncAction.run(() => super.uploadfile(file));
  }

  final _$getFromGalleryAsyncAction =
      AsyncAction('_HomeControllerBase.getFromGallery');

  @override
  Future<void> getFromGallery() {
    return _$getFromGalleryAsyncAction.run(() => super.getFromGallery());
  }

  final _$getFromCameraAsyncAction =
      AsyncAction('_HomeControllerBase.getFromCamera');

  @override
  Future<void> getFromCamera() {
    return _$getFromCameraAsyncAction.run(() => super.getFromCamera());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void clearImage() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.clearImage');
    try {
      return super.clearImage();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageFile: ${imageFile},
loading: ${loading},
showResult: ${showResult},
type: ${type},
acc: ${acc}
    ''';
  }
}
