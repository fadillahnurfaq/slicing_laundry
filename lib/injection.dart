import 'package:get_it/get_it.dart';
import 'package:slicing_laundry/controllers/home_controller.dart';
import 'package:slicing_laundry/controllers/main_navigation_controller.dart';

final locator = GetIt.instance;

void init() {
  locator.registerFactory(() => MainNavigationController());
  locator.registerFactory(() => HomeController());
}
