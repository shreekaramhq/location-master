import 'package:flutter_test/flutter_test.dart';
import 'package:locationmaster/shared/infrastructure/database/sql_database.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  SqlDatabase,
])
void main() {
  test('sqldatabase ...', () async {
    final instace1 = await SqlDatabase.instance.database;
    final instace2 = await SqlDatabase.instance.database;

    expect(instace1, instace2);
  });
}
