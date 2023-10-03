Class {
	#name : #FamixSQLImporter,
	#superclass : #Object,
	#instVars : [
		'model'
	],
	#category : #'SQL-Model-Importer'
}

{ #category : #importing }
FamixSQLImporter >> ensureCreateColumn: columnName in: aFamixSQLTable [

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
FamixSQLImporter >> ensureCreateForeignKey: fkConstraintName in: table column: column [

	| foreignKeyConstraint columnReference |

	table constraints
		detect: [ :constraint | constraint name = fkConstraintName ]
		ifOne: [:constraint | ^constraint ].

	foreignKeyConstraint := self model newForeignKeyConstraint.
	foreignKeyConstraint name: fkConstraintName.
	table addConstraint: foreignKeyConstraint.

	columnReference := self model newColumnReference.
	columnReference column: column.
	foreignKeyConstraint addColumnReference: columnReference.

	^ foreignKeyConstraint
]

{ #category : #importing }
FamixSQLImporter >> ensureCreatePrimaryKeyConstraint: pkConstraintName in: table column: pkColumnName [

	| primaryKeyConstraint columnReference |
	pkColumnName ~= 'NULL' ifFalse: [ ^ self ].

	table constraints
		detect: [ :constraint | constraint name = pkConstraintName ]
		ifOne: [:constraint | ^constraint ].

	primaryKeyConstraint := FamixSQLPrimaryKeyConstraint new.
	primaryKeyConstraint name: pkConstraintName.

	table addConstraint: primaryKeyConstraint.

	columnReference := FamixSQLColumnReference new.
	columnReference column: (self ensureCreateColumn: pkColumnName in: table).
	primaryKeyConstraint addColumnReference: columnReference.

	self model addAll: { 
			primaryKeyConstraint.
			columnReference }
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

{ #category : #importing }
FamixSQLImporter >> import [

	self importTables.
	self importViews.

	^ self model
]

{ #category : #importing }
FamixSQLImporter >> importTables [ 

	self subclassResponsibility 
]

{ #category : #importing }
FamixSQLImporter >> importViews [

	self subclassResponsibility 
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
