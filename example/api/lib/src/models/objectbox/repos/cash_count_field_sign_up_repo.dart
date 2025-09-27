import 'package:api/objectbox.g.dart';
import '../box/cash_count_field_sign_up_box.dart';
import '../../json/index.dart';

class CashCountFieldSignUpBoxRepo {
  final Box<CashCountFieldSignUpBox> _box;

  CashCountFieldSignUpBoxRepo(this._box);

  // Create from API model
  int createFromAPI(CashCountFieldSignUp model) {
    final boxModel = CashCountFieldSignUpBox.fromAPI(model);
    return _box.put(boxModel);
  }

  // Read as API model
  CashCountFieldSignUp? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  CashCountFieldSignUpBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<CashCountFieldSignUp> models) {
    final entities = models
        .map((model) => CashCountFieldSignUpBox.fromAPI(model))
        .toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<CashCountFieldSignUp> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<CashCountFieldSignUpBox> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI(CashCountFieldSignUp model, int id) {
    final boxModel = CashCountFieldSignUpBox.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
