const insertLocationQuery = '''
INSERT INTO location
    (id, name, latitude, longitude, group_id, created_at, updated_at, description) 
    VALUES(?, ?, ?, ?, ?, ?, ?, ?)
''';

const selectlocationQuery = '''SELECT * from location''';

const deletelocationQuery = '''DELETE FROM location where id=?''';

// const selectGroupsQuery = '''SELECT * from groups''';
const selectGroupsQuery =
    '''SELECT *, (select count(*) from location where group_id=g.id) as location_count from groups g ORDER BY updated_at DESC''';

const selectGroupByIdQuery =
    '''SELECT *, (select count(*) from location where group_id=g.id) as location_count from groups g where id=?''';

const selectLocationByGroupQuery = '''SELECT * from location where group_id=?''';

const selectLocationByIdQuery = '''SELECT * from location where id=?''';

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
