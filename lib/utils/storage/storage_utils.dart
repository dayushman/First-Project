import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:starter/app/data/models/dto/user.dart';
import 'package:starter/app/routes/app_pages.dart';
import 'package:starter/utils/loading/loading_utils.dart';

class Storage {
  Storage._privateConstructor();

  static final _box = GetStorage();

  static String getAuth() =>  _box.read(StorageKeys.AUTHORIZATION);

  static void setAuth(String auth) =>
      _box.write(StorageKeys.AUTHORIZATION, auth);

  static UserData getUser() => UserData.fromJson(_box.read(StorageKeys.USER));

  static void setUser(UserData? user) =>
      _box.write(StorageKeys.USER, user?.toJson());

  static bool isUserExists() => _box.read(StorageKeys.USER) != null;
  static void logout()async{
    LoadingUtils.showLoader();
    await _box.erase();
    LoadingUtils.hideLoader();
    Get.toNamed(Routes.AUTH_LOGIN);
  }
}

class StorageKeys {
  StorageKeys._privateConstructor();

  static const AUTHORIZATION = 'Authorization';
  static const USER = 'user';
}
