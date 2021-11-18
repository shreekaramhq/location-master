const insertLocationQuery = '''
INSERT INTO locations
    (id, name, latitude, longitude, createdAt, updatedAt, description) 
    VALUES(?, ?, ?, ?, ?, ?, ?)
''';

const selectLocationsQuery = '''SELECT * from locations''';

const deleteLocationsQuery = '''DELETE FROM locations where id=?''';
