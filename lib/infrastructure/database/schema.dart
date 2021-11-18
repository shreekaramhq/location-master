const createLocationsTable = '''CREATE TABLE locations(
            id TEXT PRIMARY KEY,
            name TEXT NOT NULL,
            latitude TEXT NOT NULL,
            longitude TEXT NOT NULL,
            createdAt TEXT NOT NULL,
            updatedAt TEXT NOT NULL,
            description TEXT)
            ''';
