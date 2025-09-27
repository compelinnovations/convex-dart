import 'package:api/objectbox.g.dart';
import '../box/field_agent_stat_box.dart';
import '../../json/index.dart';

class FieldAgentStatBoxRepo {
  final Box<FieldAgentStatBox> _box;

  FieldAgentStatBoxRepo(this._box);

  // Create from API model
  int createFromAPI(FieldAgentStat model) {
    final boxModel = FieldAgentStatBox.fromAPI(model);
    return _box.put(boxModel);
  }

  // Read as API model
  FieldAgentStat? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  FieldAgentStatBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<FieldAgentStat> models) {
    final entities = models
        .map((model) => FieldAgentStatBox.fromAPI(model))
        .toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<FieldAgentStat> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<FieldAgentStatBox> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI(FieldAgentStat model, int id) {
    final boxModel = FieldAgentStatBox.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
