import 'package:api/objectbox.g.dart';
import '../box/field_agent_weekly_earnings_summary_box.dart';
import '../../json/index.dart';
import '../../../functions/fieldAgentEarnings/getFieldAgentWeeklyEarningsSummary.dart'
    show FieldAgentWeeklyEarningsSummaryDoc;

class FieldAgentWeeklyEarningsSummaryBoxRepo {
  final Box<FieldAgentWeeklyEarningsSummaryBox> _box;

  FieldAgentWeeklyEarningsSummaryBoxRepo(this._box);

  // Create from API model
  int createFromAPI(FieldAgentWeeklyEarningsSummary model) {
    final boxModel = FieldAgentWeeklyEarningsSummaryBox.fromAPI(model);
    return _box.put(boxModel);
  }

  // Create from typedef record (Convex Doc)
  int saveFromDoc(FieldAgentWeeklyEarningsSummaryDoc doc) {
    final model = FieldAgentWeeklyEarningsSummary.fromDoc(doc);
    return createFromAPI(model);
  }

  // Read as API model
  FieldAgentWeeklyEarningsSummary? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  FieldAgentWeeklyEarningsSummaryBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<FieldAgentWeeklyEarningsSummary> models) {
    final entities = models
        .map((model) => FieldAgentWeeklyEarningsSummaryBox.fromAPI(model))
        .toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<FieldAgentWeeklyEarningsSummary> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<FieldAgentWeeklyEarningsSummaryBox> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI(FieldAgentWeeklyEarningsSummary model, int id) {
    final boxModel = FieldAgentWeeklyEarningsSummaryBox.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
