import '../constants/route_paths.dart' as routes;
import '../locator.dart';
import '../services/navigation_service.dart';
import 'base_model.dart';

class LoginViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future<bool> login({bool success = true}) async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 1));

    if (!success) {
      setErrorMessage('Error has occured with the login');
    } else {
      setErrorMessage(null);
      _navigationService.navigateTo(routes.HomeRoute);
    }

    setBusy(false);
    return success;
  }
}
