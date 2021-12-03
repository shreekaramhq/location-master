const insertLocationQuery = '''
INSERT INTO locations
    (id, name, latitude, longitude, createdAt, updatedAt, description) 
    VALUES(?, ?, ?, ?, ?, ?, ?)
''';

const selectLocationsQuery = '''SELECT * from locations''';

const deleteLocationsQuery = '''DELETE FROM locations where id=?''';

const selectGroupsQuery = '''SELECT * from groups''';

const selectGroupByIdQuery = '''SELECT * from groups where id=?''';

const selectLocationQuery = '''SELECT * from locations where groupId=?''';
