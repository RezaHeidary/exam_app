import 'package:exam_app/core/theme/theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MatrialAppService extends GetxService {
  GetStorage getStorage = GetStorage();

  getTheme() {
    return getStorage.read("theme") == "dark"
        ? Themes.darkTheme
        : Themes.lightTheme;
  }

  Future getInit() async {
    await GetStorage.init();
  }
}
