import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import '../navigation/app.locator.dart';

class EventDetailsViewModel extends BaseModel {
  //final NavigationService _navigationService = locator<NavigationService>(); 
  final appRouter = locator<AppRouter>();

  void navigateToTicketScreen() {
     appRouter.push( BuyTicket1ScreenRoute());
       notifyListeners();
    
  }
  



}
