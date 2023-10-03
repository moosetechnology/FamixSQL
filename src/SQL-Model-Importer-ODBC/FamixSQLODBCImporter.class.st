"
## Usage

```st
connection := ODBCConnection new.
connection dsn: 'dsnName'.
connection uid: 'username'. ""Username""
connection pwd: 'password'. ""Password""
connection connect.

importer := FamixSQLODBCImporter new.
importer model: FamixSQLModel new.
importer source: connection.

model := importer import.
model.
```

## Options

If you need to import tables that are under a specific schema, you can set the schema variable beforehand

```st
importer := FamixSQLODBCImporter new.
importer schema: 'MY_SCHEMA'.
importer model: FamixSQLModel new.
importer source: connection.

```
"
Class {
	#name : #FamixSQLODBCImporter,
	#superclass : #FamixSQLImporter,
	#instVars : [
		'source',
		'schema'
	],
	#category : #'SQL-Model-Importer-ODBC'
}

{ #category : #querying }
FamixSQLODBCImporter >> columns: aTableName [

	^ self schema
		  ifNil: [ self source columns: aTableName ]
		  ifNotNil: [ :sch | 
			  self source
				  columns: nil
				  qualifier: nil
				  owner: sch
				  table: aTableName ]
]

{ #category : #importing }
FamixSQLODBCImporter >> ensureCreateForeignKey: foreignKey for: table [

	| foreignKeyConstraint columnReference primaryKeyTable primaryKeyColumn primaryKeyColumnName foreignKeyColumn |

	primaryKeyColumnName := foreignKey at: #PKCOLUMN_NAME.
	primaryKeyColumnName = 'NULL' ifTrue: [ ^ nil ].

	foreignKeyColumn := self
		ensureCreateColumn: (foreignKey at: #FKCOLUMN_NAME) in: table.

	foreignKeyConstraint := self
		ensureCreateForeignKey: (foreignKey at: #FK_NAME)
		in: table
		column: foreignKeyColumn.

	primaryKeyTable := self ensureCreateTable: (foreignKey at: #PKTABLE_NAME).
	primaryKeyColumn := self
		ensureCreateColumn: primaryKeyColumnName in: primaryKeyTable.

	columnReference := self model newForeignColumnReference.
	columnReference primaryKeyColumn: primaryKeyColumn.

	foreignKeyConstraint foreignColumnReference: columnReference.
	
	^foreignKeyConstraint 
]

{ #category : #importing }
FamixSQLODBCImporter >> importTableColumns: table [

	'import columns of TABLE: ' trace.
	table name traceCr.

	(self columns: table name) do: [ :column || sqlColumn |
		  sqlColumn := self ensureCreateColumn: column name in: table
	].

]

{ #category : #importing }
FamixSQLODBCImporter >> importTableForeignKeys: table [

	'import foreignkeys of TABLE: ' trace.
	table name traceCr.

	(self source
		queryForeignKeysOf: table name inSchema: self schema)

		do: [ :foreignKey |
			self ensureCreateForeignKey: foreignKey for: table ]
]

{ #category : #importing }
FamixSQLODBCImporter >> importTablePrimaryKeys: table [

	'import primarykeys of TABLE: ' trace.
	table name traceCr.
	(self source queryPrimaryKeysOf: table name inSchema: self schema)
		do: [ :primaryKey |
			self
				ensureCreatePrimaryKeyConstraint: (primaryKey at: #PK_NAME)
				in: table
				column: (primaryKey at: #COLUMN_NAME) ]
]

{ #category : #importing }
FamixSQLODBCImporter >> importTables [

	self sourceTables do: [ :tableName || table |
		'import struct of TABLE: ' trace.
		tableName traceCr.

		table := self ensureCreateTable: tableName.
		self importTableColumns: table.
		self importTablePrimaryKeys: table.
		self importTableForeignKeys: table
	].

	^ self model
]

{ #category : #importing }
FamixSQLODBCImporter >> importViews [

	self sourceViews do: [ :viewName | 
		| view |
		('import struct of VIEW: ' , viewName) traceCr.
		view := self ensureCreateView: viewName.
		(self columns: viewName) do: [ :column | 
			| sqlColumn |
			sqlColumn := self ensureCreateColumn: column name in: view ] ].

]

{ #category : #accessing }
FamixSQLODBCImporter >> schema [

	^ schema
]

{ #category : #accessing }
FamixSQLODBCImporter >> schema: anObject [

	schema := anObject
]

{ #category : #accessing }
FamixSQLODBCImporter >> source [

	^ source
]

{ #category : #accessing }
FamixSQLODBCImporter >> source: anObject [

	source := anObject
]

{ #category : #importing }
FamixSQLODBCImporter >> sourceTables [

	^ self schema ifNil: [ self source tables ] ifNotNil: [ :sch | 
		  (self source exec:
			   ('SELECT table_name from all_tables where owner = ''{schemaName}''' 
				    format: (Dictionary with: #schemaName -> sch))) results 
			  flatCollect: #contents ]
]

{ #category : #importing }
FamixSQLODBCImporter >> sourceViews [

	^ self schema
		ifNil: [ self source views ]
		ifNotNil: [ :sch | 
		  (self source exec:
			   ('SELECT view_name from all_views where owner = ''{schemaName}''' 
				    format: (Dictionary with: #schemaName -> sch))) results 
			  flatCollect: #contents ]
]
