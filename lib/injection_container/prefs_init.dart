import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final di = GetIt.I;

Future<void> prefsInit() async {
  final prefs = await SharedPreferences.getInstance();
  di.registerLazySingleton<SharedPreferences>(() => prefs);
}
