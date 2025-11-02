import 'package:api/objectbox.g.dart';
import '../box/cash_count_field_sign_up_stats_box.dart';
import '../../json/index.dart';
import '../../../functions/fieldAgentCashCount/getCashCountFieldSignUpStats.dart'
    show CashCountFieldSignUpStatsDoc;

class CashCountFieldSignUpStatsBoxRepo {
  final Box<CashCountFieldSignUpStatsBox> _box;

  CashCountFieldSignUpStatsBoxRepo(this._box);

  // Create from API model
  int createFromAPI(CashCountFieldSignUpStats model) {
    final boxModel = CashCountFieldSignUpStatsBox.fromAPI(model);
    return _box.put(boxModel);
  }

  // Create from typedef record (Convex Doc)
  int saveFromDoc(CashCountFieldSignUpStatsDoc doc) {
    final model = CashCountFieldSignUpStats.fromDoc(doc);
    return createFromAPI(model);
  }

  // Read as API model
  CashCountFieldSignUpStats? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  CashCountFieldSignUpStatsBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<CashCountFieldSignUpStats> models) {
    final entities = models
        .map((model) => CashCountFieldSignUpStatsBox.fromAPI(model))
        .toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<CashCountFieldSignUpStats> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<CashCountFieldSignUpStatsBox> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI(CashCountFieldSignUpStats model, int id) {
    final boxModel = CashCountFieldSignUpStatsBox.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
