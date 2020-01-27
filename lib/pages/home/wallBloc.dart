// import 'package:portraitwallfy/constants/frazile.dart';
import 'package:portraitwallfy/services/manager.dart';
import 'package:rxdart/rxdart.dart';
import 'package:portraitwallfy/services/responses.dart';

class WallBloc {
  final wallsBloc = BehaviorSubject<List<Result>>();
  List<Result> wallsData = List<Result>();
  Observable<List<Result>> get wallpapers => wallsBloc.stream;

  Future fetchImages({int page}) async {
    List<Result> walls;
    try {
      ServiceManager sm = ServiceManager();
      walls = await sm.fetchWalls(page: page);

      walls.forEach((wall) {
        // Result wallData = Result();
        wallsData.add(wall);
      });
      wallsBloc.sink.add(wallsData);
    } catch (error) {
      print(error);
    }
  }

  dispose() {
    wallsBloc.close();
  }
}
