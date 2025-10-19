import 'package:api/objectbox.g.dart';
import '../box/auth_user_box.dart';
import '../../json/index.dart';
import '../../../functions/fieldAgentAuth/getMe.dart' show AuthUserDoc;

class AuthUserBoxRepo {
  final Box<AuthUserBox> _box;

  AuthUserBoxRepo(this._box);

  // Create from API model
  int createFromAPI(AuthUser model) {
    final boxModel = AuthUserBox.fromAPI(model);
    return _box.put(boxModel);
  }

  // Create from typedef record (Convex Doc)
  int saveFromDoc(AuthUserDoc doc) {
    final model = AuthUser.fromDoc(doc);
    return createFromAPI(model);
  }

  // Read as API model
  AuthUser? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  AuthUserBox? getBox(int id) {
    return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<AuthUser> models) {
    final entities = models.map((model) => AuthUserBox.fromAPI(model)).toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<AuthUser> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<AuthUserBox> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI(AuthUser model, int id) {
    final boxModel = AuthUserBox.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
