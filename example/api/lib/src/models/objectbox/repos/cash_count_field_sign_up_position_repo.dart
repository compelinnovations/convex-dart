import 'package:api/objectbox.g.dart';
import '../box/cash_count_field_sign_up_position_box.dart';
import '../../json/index.dart';

class CashCountFieldSignUpPositionBoxRepo {
  final Box<CashCountFieldSignUpPositionBox> _box;

  CashCountFieldSignUpPositionBoxRepo(this._box);

  // Create from API model
  int createFromAPI(CashCountFieldSignUpPosition model) {
    final boxModel = CashCountFieldSignUpPositionBox.fromAPI(model);
    return _box.put(boxModel);
  }

  // Read as API model
  CashCountFieldSignUpPosition? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  CashCountFieldSignUpPositionBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<CashCountFieldSignUpPosition> models) {
    final entities = models
        .map((model) => CashCountFieldSignUpPositionBox.fromAPI(model))
        .toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<CashCountFieldSignUpPosition> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<CashCountFieldSignUpPositionBox> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI(CashCountFieldSignUpPosition model, int id) {
    final boxModel = CashCountFieldSignUpPositionBox.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
