import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import '../navigation/app.locator.dart';

class HomeScreenViewModel extends BaseModel {
  //final NavigationService _navigationService = locator<NavigationService>(); 
  final appRouter = locator<AppRouter>();

  void navigateToAllEventScreen() {
     appRouter.push( AllEventScreenRoute());
       notifyListeners();
    
  }
   bool _showOverlay = false;

  bool get showOverlay => _showOverlay;

  void toggleOverlay() {
    _showOverlay = !_showOverlay;
    notifyListeners();
  }



 bool _isDrawerOpen = false;

  bool get isDrawerOpen => _isDrawerOpen;

  
  void openDrawer() {
    _isDrawerOpen = true;
    notifyListeners();
  }

  void closeDrawer() {
    _isDrawerOpen = false;
    notifyListeners();
  }


  void setDrawerOpen(bool isOpen) {
    _isDrawerOpen = isOpen;
    notifyListeners();
  }

}