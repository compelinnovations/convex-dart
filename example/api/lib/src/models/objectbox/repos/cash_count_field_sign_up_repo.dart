import 'package:api/objectbox.g.dart';
import '../box/cash_count_field_sign_up_box.dart';

class CashCountFieldSignUpBoxRepo {
  final Box<CashCountFieldSignUpBox> _box;

  CashCountFieldSignUpBoxRepo(this._box);

  // Create from map
  int createFromMap(Map<String, dynamic> map) {
    final boxModel = CashCountFieldSignUpBox.fromMap(map);
    return _box.put(boxModel);
  }

  // Read as map
  Map<String, dynamic>? getAsMap(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toMap();
  }

  // Read Box
  CashCountFieldSignUpBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from maps
  void putManyFromMaps(List<Map<String, dynamic>> maps) {
    final entities = maps
        .map((map) => CashCountFieldSignUpBox.fromMap(map))
        .toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<Map<String, dynamic>> getAllAsMaps() {
    return _box.getAll().map((boxModel) => boxModel.toMap()).toList();
  }

  List<CashCountFieldSignUpBox> getAllBox() {
    return _box.getAll();
  }

  // Update from map
  void updateFromMap(Map<String, dynamic> map, int id) {
    final boxModel = CashCountFieldSignUpBox.fromMap(map)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
