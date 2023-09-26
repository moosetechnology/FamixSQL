Class {
	#name : #FamixSQLImporter,
	#superclass : #Object,
	#instVars : [
		'model'
	],
	#category : #'SQL-Model-Importer'
}

{ #category : #importing }
FamixSQLImporter >> createForeignIfRequired: table for: column basedOn: fkConstraintName and: fkColumnName [

	| foreignKeyConstraint columnReference |
	fkColumnName ~= 'NULL' ifFalse: [ ^ nil ].
	table constraints detect: [ :constraint | constraint name = fkConstraintName ] ifOne: [:constraint | ^constraint ].
	foreignKeyConstraint := FamixSQLForeignKeyConstraint new.
	foreignKeyConstraint name: fkConstraintName.
	table addConstraint: foreignKeyConstraint.
	columnReference := FamixSQLColumnReference new.
	columnReference column: column.
	foreignKeyConstraint addColumnReference: columnReference.
	self model addAll: { 
			foreignKeyConstraint.
			columnReference }.
	^ foreignKeyConstraint
]

{ #category : #importing }
FamixSQLImporter >> createPrimaryIfRequired: table for: column basedOn: pkConstraintName and: pkColumnName [

	| primaryKeyConstraint columnReference |
	pkColumnName ~= 'NULL' ifFalse: [ ^ self ].
	table constraints detect: [ :constraint | constraint name = pkConstraintName ] ifOne: [:constraint | ^constraint ].
	primaryKeyConstraint := FamixSQLPrimaryKeyConstraint new.
	primaryKeyConstraint name: pkConstraintName.
	table addConstraint: primaryKeyConstraint.
	columnReference := FamixSQLColumnReference new.
	columnReference column: column.
	primaryKeyConstraint addColumnReference: columnReference.
	self model addAll: { 
			primaryKeyConstraint.
			columnReference }
]

{ #category : #importing }
FamixSQLImporter >> ensureCreateColumn: columnName for: aFamixSQLTable [

	^ aFamixSQLTable columns
		  detect: [ :el | el name = columnName ]
		  ifNone: [ 
			  | column |
			  column := FamixSQLColumn new.
			  column name: columnName.
			  self model add: column.
			  aFamixSQLTable addColumn: column.
			  column ]
]

{ #category : #importing }
FamixSQLImporter >> ensureCreateSchema: schemaName [

	^ model asOrderedCollection
		  detect: [ :el | 
		  (el isKindOf: FamixSQLSchema) and: [ el name = schemaName ] ]
		  ifNone: [ 
			  | schema |
			  schema := FamixSQLSchema new.
			  schema name: schemaName.
			  self model add: schema.
			  schema ]
]

{ #category : #importing }
FamixSQLImporter >> ensureCreateTable: tableName [

	^ model asOrderedCollection
		  detect: [ :el | 
		  (el isKindOf: FamixSQLTable) and: [ el name = tableName ] ]
		  ifNone: [ 
			  | table |
			  table := FamixSQLTable new.
			  table name: tableName.
			  self model add: table.
			  table ]
]

{ #category : #initialization }
FamixSQLImporter >> initialize [

	super initialize.
	model := FamixSQLModel new
]

{ #category : #accessing }
FamixSQLImporter >> model [

	^ model
]

{ #category : #accessing }
FamixSQLImporter >> model: anObject [

	model := anObject
]
