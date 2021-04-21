import '../locator.dart';
import '../services/navigation_service.dart';
import 'base_model.dart';

class HomeViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future logout({bool success = true}) async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 1));

    if (!success) {
      setErrorMessage('Error has occurred during sign out');
    } else {
      _navigationService.goBack();
    }
  }
}
