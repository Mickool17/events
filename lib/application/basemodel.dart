import 'package:event/model/event.dart';
import 'package:stacked/stacked.dart';

import '../navigation/app.locator.dart';
import '../routes/app_router.dart';

class BaseModel extends BaseViewModel {
   final appRouter = locator<AppRouter>();

  void addToFavouriteList(Event event) {
    if (favouritelist.contains(event)) {
      favouritelist.remove(event);
      notifyListeners();
    } else {
     
      favouritelist.add(event);
      notifyListeners();
    }

    notifyListeners();
  }
  int _selectedCircleIndex = -1;

  int get selectedCircleIndex => _selectedCircleIndex;

  void selectCircle(int index) {
    _selectedCircleIndex = index;
    notifyListeners();
  }
    int _attendeeselectedCircleIndex = -1;

  int get attendeeselectedCircleIndex => _attendeeselectedCircleIndex;

  void attendeeselectCircle(int index) {
    _attendeeselectedCircleIndex = index;
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
}
