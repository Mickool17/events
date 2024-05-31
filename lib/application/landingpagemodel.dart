import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import '../navigation/app.locator.dart';

class LandingPageViewModel extends BaseModel {
  //final NavigationService _navigationService = locator<NavigationService>(); 
  final appRouter = locator<AppRouter>();

  void navigateToLoginScreen() {
    
  }

  void onCreateAccountTap() {
     appRouter.push(const SignUpScreenRoute());
       notifyListeners();
  }

  void onLoginTap() {

       appRouter.push(const LoginScreenRoute());
       notifyListeners();
  }
}
