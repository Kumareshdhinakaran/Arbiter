import 'package:get_it/get_it.dart';
import 'package:udecor/services/authentication_service.dart';
import 'package:udecor/services/dialog_service.dart';
import 'package:udecor/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => AuthenticationService());
}
