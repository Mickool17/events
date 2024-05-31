

import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import '../navigation/app.locator.dart';

class TicketsViewModel extends BaseModel {
  //final NavigationService _navigationService = locator<NavigationService>();
  final appRouter = locator<AppRouter>();

  void navigateToPurchaseScreen() {
    appRouter.push(PurchaseConfirmation1ScreenRoute());
    notifyListeners();
  }

  bool _isDrawerOpen = false;

  bool get isDrawerOpen => _isDrawerOpen;

  void setDrawerOpen(bool isOpen) {
    _isDrawerOpen = isOpen;
    notifyListeners();
  }


  String _selectedCategory = 'All';

  String get selectedCategory => _selectedCategory;

  void selectCategory(String category) {
    if (_selectedCategory != category) {
      _selectedCategory = category;
      notifyListeners();
    }
  }


  List<String> _favoritedEvents = [];

  List<String> get favoritedEvents => _favoritedEvents;

  void favoriteEvent(String eventName) {
    if (!_favoritedEvents.contains(eventName)) {
      _favoritedEvents.add(eventName);
      notifyListeners();
    }
  }
   bool _showOverlay = false;

  bool get showOverlay => _showOverlay;

  void toggleOverlay() {
    _showOverlay = !_showOverlay;
    notifyListeners();
  }


}

