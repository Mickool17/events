import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import '../navigation/app.locator.dart';

class BuyTicket2ScreenPageViewModel extends BaseModel{
  //final NavigationService _navigationService = locator<NavigationService>();
  final appRouter = locator<AppRouter>();

  int _attendeeselectedCircleIndex = -1;

  int get attendeeselectedCircleIndex => _attendeeselectedCircleIndex;

  void attendeeselectCircle(int index) {
    _attendeeselectedCircleIndex = index;
    notifyListeners();
  }

  int _paymentselectedCircleIndex = -1;

  int get paymentselectedCircleIndex => _paymentselectedCircleIndex;

  void paymentselectCircle(int index) {
    _paymentselectedCircleIndex = index;
    notifyListeners();
  }

  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
  void navigateToPurchase2Screen() {
     appRouter.push( PurchaseConfirmation1ScreenRoute());
       notifyListeners();
    
  }

}
