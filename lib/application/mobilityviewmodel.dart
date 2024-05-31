import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import '../navigation/app.locator.dart';

class MobilityScreenPageViewModel extends BaseModel{
  final appRouter = locator<AppRouter>();


  void navigateTomobility2Screen() {
     appRouter.push( MobilityScreen2Route());
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

  void setDrawerOpen(bool isOpen) {
    _isDrawerOpen = isOpen;
    notifyListeners();
  }


}
