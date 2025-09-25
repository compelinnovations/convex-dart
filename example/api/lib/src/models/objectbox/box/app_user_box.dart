import 'package:objectbox/objectbox.dart';

@Entity()
class AppUserBox {
  @Id()
  int id = 0;

  AppUserBox({this.id = 0});

  factory AppUserBox.fromMap(Map<String, dynamic> map) {
    return AppUserBox(id: 0);
  }

  Map<String, dynamic> toMap() {
    return {};
  }
}
