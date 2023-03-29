import 'auth_injection.dart';
import 'dio_init_client.dart';
import 'prefs_init.dart';

Future<void> init({forRestart = false}) async {
  await prefsInit();

  authInit();

  initDioClient();
}
