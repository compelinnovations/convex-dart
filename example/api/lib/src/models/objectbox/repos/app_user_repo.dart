import 'package:api/objectbox.g.dart';
import '../box/app_user_box.dart';

class AppUserBoxRepo {
  final Box<AppUserBox> _box;

  AppUserBoxRepo(this._box);

  // Create from map
  int createFromMap(Map<String, dynamic> map) {
    final boxModel = AppUserBox.fromMap(map);
    return _box.put(boxModel);
  }

  // Read as map
  Map<String, dynamic>? getAsMap(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toMap();
  }

  // Read Box
  AppUserBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from maps
  void putManyFromMaps(List<Map<String, dynamic>> maps) {
    final entities = maps.map((map) => AppUserBox.fromMap(map)).toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<Map<String, dynamic>> getAllAsMaps() {
    return _box.getAll().map((boxModel) => boxModel.toMap()).toList();
  }

  List<AppUserBox> getAllBox() {
    return _box.getAll();
  }

  // Update from map
  void updateFromMap(Map<String, dynamic> map, int id) {
    final boxModel = AppUserBox.fromMap(map)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
