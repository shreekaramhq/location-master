import 'dart:async';

import 'package:locationmaster/modules/location/domain/location_model.dart';
import 'package:locationmaster/shared/domain/stream_result.dart';
import 'package:locationmaster/shared/infrastructure/database/queries.dart';
import 'package:locationmaster/shared/infrastructure/database/sql_database.dart';

import '../domain/i_location_repository.dart';
import 'location_model_dto.dart';

class LocationRepository implements ILocationRepository {
  final SqlDatabase _sqlDatabase;

  LocationRepository(this._sqlDatabase);

  @override
  Stream<StreamResult<LocationModel>> get locationStream => _locationStreamController.stream;

  final StreamController<StreamResult<LocationModel>> _locationStreamController =
      StreamController.broadcast();

  @override
  Future<void> createLocation(CreateLocationPayload payload) async {
    final dto = LocationModelDto.fromCreatePayload(payload);

    final _db = await _sqlDatabase.database;

    final batch = _db.batch();

    batch.insert(LOCATION_TABLE, dto.toMap());

    batch.rawQuery(selectLocationByIdQuery, [dto.id]);

    final results = await batch.commit();

    final locations = results.last as List<Map<String, Object?>>;

    final location = locations.map((e) => LocationModelDto.fromMap(e).toDomain()).toList().last;

    _locationStreamController.sink.add(StreamResult.created(location));
  }

  @override
  Future<void> deleteLocation(String locationId) async {
    final _db = await _sqlDatabase.database;

    await _db.delete(
      LOCATION_TABLE,
      where: 'id = ?',
      whereArgs: [locationId],
    );

    _locationStreamController.sink.add(StreamResult.deleted(locationId));
  }

  @override
  Future<List<LocationModel>> getLocations(String groupId) async {
    final _db = await _sqlDatabase.database;

    final result = await _db.rawQuery(selectLocationByGroupQuery, [groupId]);

    return result.map((e) => LocationModelDto.fromMap(e).toDomain()).toList();
  }

  @override
  Future<void> createLocationPin() async {
    final _db = await _sqlDatabase.database;

    await _db.insert("locations", {
      "description": "",
      "location_id": "",
      "created_on": "",
      "updated_on": "",
    });
  }

  @override
  Future<List<LocationModel>> getAllLocations() async {
    final _db = await _sqlDatabase.database;

    final result = await _db.rawQuery(selectAllLocationQuery);

    return result.map((e) => LocationModelDto.fromMap(e).toDomain()).toList();
  }

  @override
  Future<void> updateLocation(UpdateLocationPayload payload) async {
    final _db = await _sqlDatabase.database;

    final batch = _db.batch();

    batch.update(LOCATION_TABLE, payload.toMap(), where: "id=?", whereArgs: [payload.id]);

    batch.rawQuery(selectLocationByIdQuery, [payload.id]);

    final results = await batch.commit();

    final groups = results.last as List<Map<String, Object?>>;

    final group = groups.map((e) => LocationModelDto.fromMap(e).toDomain()).toList().last;

    _locationStreamController.sink.add(StreamResult.updated(group));
  }
}
