import 'package:portraitwallfy/services/caller.dart';
import 'package:portraitwallfy/services/connectionStatus.dart';
import 'package:portraitwallfy/services/responses.dart';

class ServiceManager {
  final ServiceCaller _sc = ServiceCaller();

  Future<List<Result>> fetchWalls({int page}) async {
    Food food;
    try {
      ConnectionStatus connectionStatus = ConnectionStatus.getInstance();
      bool isOnline = await connectionStatus.checkConnection();
      if (isOnline) food = await _sc.fetchWalls(page: page);
      return food.results;
    } catch (e) {
      throw e;
    }
  }
}
