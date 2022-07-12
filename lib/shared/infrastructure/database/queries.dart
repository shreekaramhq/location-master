const insertLocationQuery = '''
INSERT INTO location
    (id, name, latitude, longitude, group_id, created_at, updated_at, description) 
    VALUES(?, ?, ?, ?, ?, ?, ?, ?)
''';

const selectlocationQuery = '''SELECT * from location''';

const deletelocationQuery = '''DELETE FROM location where id=?''';

const selectGroupsQuery = '''SELECT * from groups''';

const selectGroupByIdQuery = '''SELECT * from group where id=?''';

const selectLocationQuery = '''SELECT * from location where group_id=?''';

const selectAllLocationQuery = '''SELECT * from location''';

const insertLocationPinQuery = '''
INSERT INTO location_pin
    (id, description, location_id, created_at, updated_at) 
    VALUES(?, ?, ?, ?, ?, ?, ?)
''';

const selectLocationPinsQuery =
    '''SELECT * from location l join location_pin p where p.location_id=l.id''';

const deleteLocationPinQuery = '''DELETE FROM location_pin where id=?''';

// legacy backup
const backUplocation = '''SELECT * from location''';
