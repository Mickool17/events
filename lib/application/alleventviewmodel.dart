import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import '../navigation/app.locator.dart';

class AllEventViewModel extends BaseModel {
  //final NavigationService _navigationService = locator<NavigationService>();
  final appRouter = locator<AppRouter>();

  void navigateToEventDeatailsScreen() {
    appRouter.push(EventDetailsScreenRoute());
    notifyListeners();
  }

  bool _isDrawerOpen = false;

  bool get isDrawerOpen => _isDrawerOpen;

  void setDrawerOpen(bool isOpen) {
    _isDrawerOpen = isOpen;
    notifyListeners();
  }

  int _selectedCircleIndex = -1;

  int get selectedCircleIndex => _selectedCircleIndex;

  void selectCircle(int index) {
    _selectedCircleIndex = index;
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
}
