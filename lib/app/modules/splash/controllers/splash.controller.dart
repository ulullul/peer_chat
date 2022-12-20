import 'package:get/get.dart';
import 'package:peer_chat/app/core/base_controller.dart';
import 'package:peer_chat/app/data/database/app_database.dart';
import 'package:peer_chat/app/data/secure_storage/password_storage.dart';
import 'package:peer_chat/app/data/secure_storage/secure_storage_provider.dart';
import 'package:peer_chat/app/routes/app_pages.dart';
import 'package:sembast/sembast.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    super.onInit();
    _init();
  }

  void _init() async {
    await initDependencies();
    final passwordStorage = Get.find<PasswordStorage>();
    if (!(await passwordStorage.isPasswordSet())) {
      return _goToNextRoute(Routes.AUTH);
    }
    await Get.putAsync<Database>(
      () async => await AppDatabase.instance.database,
      permanent: true,
    );
    return _goToNextRoute(Routes.HOME);
  }

  void _goToNextRoute(String route) {
    Get.offNamed(route);
  }

  Future<void> initDependencies() async {
    Get.lazyPut<SecureStorageProvider>(() => SecureStorageProvider().init());
    Get.lazyPut<PasswordStorage>(() => PasswordStorage());
  }
}
