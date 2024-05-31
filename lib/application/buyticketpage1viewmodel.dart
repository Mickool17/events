import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import '../navigation/app.locator.dart';

class BuyTicket1ScreenPageViewModel extends BaseModel{
  //final NavigationService _navigationService = locator<NavigationService>(); 
  final appRouter = locator<AppRouter>();

  void navigateToTicket2Screen() {
     appRouter.push( BuyTicket2ScreenRoute());
       notifyListeners();
    
  }

int _selectedCircleIndex = -1;

  int get selectedCircleIndex => _selectedCircleIndex;

  void selectCircle(int index) {
    _selectedCircleIndex = index;
    notifyListeners();
  }
}
 