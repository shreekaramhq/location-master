import 'package:injectable/injectable.dart';

import 'package:locationmaster/domain/location/i_location_repository.dart';
import 'package:locationmaster/domain/location/location_model.dart';
import 'package:locationmaster/infrastructure/database/database.dart';
import 'package:locationmaster/infrastructure/database/queries.dart';
import 'package:locationmaster/infrastructure/location/location_model_dto.dart';

@LazySingleton(as: ILocationRepository)
class LocationRepository implements ILocationRepository {
  final SqlDatabase _sqlDatabase;

  LocationRepository(this._sqlDatabase);

  @override
  Future<List<LocationModel>> getAllLocations() async {
    final result = await _sqlDatabase.instance.rawQuery(
      selectLocationsQuery,
    );

    return result.map((e) => LocationModelDto.fromMap(e).toDomain()).toList();
  }

  @override
  Future<void> addLocation(LocationModel location) async {
    final dto = LocationModelDto.fromDomain(location);

    // final result =
    //     await _sqlDatabase.instance.rawInsert(insertLocationQuery, [
    //   dto.id,
    //   dto.name,
    //   dto.latitude,
    //   dto.longitude,
    //   dto.createdAt,
    //   dto.updatedAt,
    //   dto.description ?? ""
    // ]);

    print(dto.toMap());

    await _sqlDatabase.instance.insert("locations", dto.toMap());
  }

  @override
  Future<void> deleteLocation(String locationId) async {
    await _sqlDatabase.instance.delete(
      LOCATIONS_TABLE,
      where: 'id = ?',
      whereArgs: [locationId],
    );
  }
}
