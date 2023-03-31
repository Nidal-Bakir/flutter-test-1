import 'auth_injection.dart';
import 'cart_injection.dart';
import 'dio_init_client.dart';
import 'latest_products_injection.dart';
import 'prefs_init.dart';

Future<void> init({forRestart = false}) async {
  await prefsInit();

  authInit();

  await initDioClient();

  latestProductsInit();

  cartInit();
}
