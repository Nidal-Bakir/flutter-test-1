import 'dio_init_client.dart';
import 'prefs_init.dart';

Future<void> init() async {
  await prefsInit();

  initDioClient();
}
