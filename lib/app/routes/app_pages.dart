import 'package:get/get.dart';

import '../modules/all_chats/bindings/all_chats.binding.dart';
import '../modules/all_chats/views/all_chats.view.dart';
import '../modules/auth/bindings/auth.binding.dart';
import '../modules/auth/views/auth.view.dart';
import '../modules/chat/bindings/chat.binding.dart';
import '../modules/chat/views/chat.view.dart';
import '../modules/home/bindings/home.binding.dart';
import '../modules/home/views/home.view.dart';
import '../modules/settings/bindings/settings.binding.dart';
import '../modules/settings/views/settings.view.dart';
import '../modules/splash/bindings/splash.binding.dart';
import '../modules/splash/views/splash.view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.ALL_CHATS,
      page: () => const AllChatsView(),
      binding: AllChatsBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
