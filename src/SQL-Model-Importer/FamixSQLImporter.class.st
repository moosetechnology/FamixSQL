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

	table constraints
		detect: [ :constraint | constraint name = fkConstraintName ]
		ifOne: [:constraint | ^constraint ].

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

	table constraints
		detect: [ :constraint | constraint name = pkConstraintName ]
		ifOne: [:constraint | ^constraint ].

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
FamixSQLImporter >> ensureCreateEntity: aSQLClass named: aName [

	^(model allWithType: aSQLClass)
		detect: [ :el | el name = aName ]
		ifNone: [ | entity |
			entity := aSQLClass new.
			entity name: aName.
			self model add: entity.
			entity
		]
]

{ #category : #importing }
FamixSQLImporter >> ensureCreateSchema: schemaName [

	^self ensureCreateEntity: FamixSQLNamespace named: schemaName
]

{ #category : #importing }
FamixSQLImporter >> ensureCreateTable: tableName [

	^self ensureCreateEntity: FamixSQLTable named: tableName
]

{ #category : #importing }
FamixSQLImporter >> ensureCreateView: viewName [

	^self ensureCreateEntity: FamixSQLView named: viewName
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
