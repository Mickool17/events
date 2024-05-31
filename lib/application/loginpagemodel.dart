import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import '../navigation/app.locator.dart';

class LoginPageViewModel extends BaseModel{
  final appRouter = locator<AppRouter>();

  void navigateToLoginScreen() {}

  void onCreateAccountTap() {
    appRouter.push(const SignUpScreenRoute());
    notifyListeners();
  }

  void onLoginTap() {
    appRouter.push( HomeScreenRoute());
    notifyListeners();
  }
}
