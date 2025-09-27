import 'package:api/objectbox.g.dart';
import '../box/app_user_box.dart';
import '../../json/index.dart';

class AppUserBoxRepo {
  final Box<AppUserBox> _box;

  AppUserBoxRepo(this._box);

  // Create from API model
  int createFromAPI(AppUser model) {
    final boxModel = AppUserBox.fromAPI(model);
    return _box.put(boxModel);
  }

  // Read as API model
  AppUser? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  AppUserBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<AppUser> models) {
    final entities = models.map((model) => AppUserBox.fromAPI(model)).toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<AppUser> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<AppUserBox> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI(AppUser model, int id) {
    final boxModel = AppUserBox.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
