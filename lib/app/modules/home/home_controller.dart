import 'package:food_lab/app/models/historico_pesquisa_model.dart';
import 'package:food_lab/app/models/validate_fish_model.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:food_lab/app/stores/auth_store.dart';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AuthStore? authStore = GetIt.I<AuthStore>();

  @observable
  File? imageFile;

  @observable
  bool loading = false;
  @observable
  bool showResult = false;

  @observable
  String type = '';

  @observable
  String acc = '';

  @action
  Future<dynamic> uploadfile(File file) async {
    showResult = false;
    loading = true;
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(file.path, filename: fileName),
    });

    var response =
        await Dio().post('https://food-lab-ia-api.herokuapp.com/validate-fish',
            options: Options(
              contentType: 'multipart/form-data',
            ),
            data: formData);
    print(response);
    final jsonData = json.decode(response.toString());
    var map = Map<String, dynamic>.from(jsonData);
    var res = ValidateFish.fromJson(map);
    type = res.type.toString();
    acc = res.accuracy.toString();
    HistoricoPesquisaModel history = new HistoricoPesquisaModel();
    history.acuracidade = int.parse(acc);
    history.tipoPeixe = type;
    await authStore?.savePredict(history, type);
    loading = false;
    showResult = true;
    return response;
  }

  @action
  void clearImage() {
    print(imageFile!.path);
    imageFile = File('');
    loading = false;
    showResult = false;
    type = '';
    acc = '';
  }

  @action
  Future<void> getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    }
  }

  @action
  Future<void> getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    }
  }
}
