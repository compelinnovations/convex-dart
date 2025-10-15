import 'package:api/objectbox.g.dart';
import '../box/field_agent_box.dart';
import '../../json/index.dart';

class FieldAgentBoxRepo {
  final Box<FieldAgentBox> _box;

  FieldAgentBoxRepo(this._box);

  // Create from API model
  int createFromAPI(FieldAgent model) {
    final boxModel = FieldAgentBox.fromAPI(model);
    return _box.put(boxModel);
  }

  // Read as API model
  FieldAgent? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  FieldAgentBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<FieldAgent> models) {
    final entities = models
        .map((model) => FieldAgentBox.fromAPI(model))
        .toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<FieldAgent> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<FieldAgentBox> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI(FieldAgent model, int id) {
    final boxModel = FieldAgentBox.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
