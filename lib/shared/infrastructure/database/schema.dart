const createGroupsTable = '''CREATE TABLE groups(
            id TEXT PRIMARY KEY,
            name TEXT NOT NULL,
            created_at TEXT NOT NULL,
            updated_at TEXT NOT NULL,
            description TEXT)
            ''';

const createLocationTable = '''CREATE TABLE location(
            id TEXT PRIMARY KEY,
            name TEXT NOT NULL,
            latitude REAL NOT NULL,
            longitude REAL NOT NULL,
            group_id TEXT NOT NULL,
            description TEXT,
            updated_at TEXT NOT NULL,
            created_at TEXT NOT NULL,
            FOREIGN KEY(group_id)
              REFERENCES groups(id)
                ON UPDATE CASCADE
            )
            ''';

const createLocationPinsTable = '''CREATE TABLE location_pin(
            id TEXT PRIMARY KEY,
            description TEXT,
            location_id TEXT NOT NULL,
            created_at TEXT NOT NULL,
            updated_at TEXT NOT NULL,
            FOREIGN KEY(location_id)
              REFERENCES location(id)
                ON DELETE CASCADE
                ON UPDATE CASCADE
            )
            ''';
