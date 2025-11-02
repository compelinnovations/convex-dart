import 'package:api/objectbox.g.dart';
import '../box/field_agent_weekly_earning_box.dart';
import '../../json/index.dart';

class FieldAgentWeeklyEarningBoxRepo {
  final Box<FieldAgentWeeklyEarningBox> _box;

  FieldAgentWeeklyEarningBoxRepo(this._box);

  // Create from API model
  int createFromAPI(FieldAgentWeeklyEarning model) {
    final boxModel = FieldAgentWeeklyEarningBox.fromAPI(model);
    return _box.put(boxModel);
  }

  // Read as API model
  FieldAgentWeeklyEarning? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  FieldAgentWeeklyEarningBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<FieldAgentWeeklyEarning> models) {
    final entities = models
        .map((model) => FieldAgentWeeklyEarningBox.fromAPI(model))
        .toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<FieldAgentWeeklyEarning> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<FieldAgentWeeklyEarningBox> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI(FieldAgentWeeklyEarning model, int id) {
    final boxModel = FieldAgentWeeklyEarningBox.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
