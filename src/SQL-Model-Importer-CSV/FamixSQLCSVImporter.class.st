"
# Example usage

```st
model := FamixSQLModel new.
importer := FamixSQLCSVImporter new.
importer model: model.

source := 'D:\tmp\Classeur1_csv.csv' asFileReference readStreamDo: [ :stream |
	(NeoCSVReader on: stream)
		skipHeader;
		upToEnd
	 ].
importer source: source.
importer import.
```
"
Class {
	#name : #FamixSQLCSVImporter,
	#superclass : #FamixSQLImporter,
	#instVars : [
		'source'
	],
	#category : #'SQL-Model-Importer-CSV'
}

{ #category : #importing }
FamixSQLCSVImporter >> import [

	self source do: [ :line | self importLine: line ].
	self source do: [ :line | self resolveForeignKey: line ].
	^ self model
]

{ #category : #importing }
FamixSQLCSVImporter >> importLine: line [

	| schema table column |
	schema := self ensureCreateSchema: line first.
	table := self ensureCreateTable: line second.
	table schema: schema.
	column := self ensureCreateColumn: line third for: table.
	self
		createPrimaryIfRequired: table
		for: column
		basedOn: (line at: 9)
		and: (line at: 10).
	self
		createForeignIfRequired: table
		for: column
		basedOn: (line at: 7)
		and: (line at: 8).
	
]

{ #category : #initialization }
FamixSQLCSVImporter >> initialize [

	super initialize.

	model := FamixSQLModel new
]

{ #category : #'as yet unclassified' }
FamixSQLCSVImporter >> resolveForeignKey: line [

	| foreignKey table column |
	table := self ensureCreateTable: line second.
	column := self ensureCreateColumn: line third for: table.
	foreignKey := self
		              createForeignIfRequired: table
		              for: column
		              basedOn: (line at: 7)
		              and: (line at: 8).
	foreignKey ifNotNil: [ 
		| foreignTableTargetName |
		foreignTableTargetName := ((line at: 7) substrings: '_') last.
		model asOrderedCollection
			detect: [ :el | 
				(el isKindOf: FamixSQLTable) and: [ 
					el name = foreignTableTargetName ] ]
			ifOne: [ :targetTable | 
				| foreignColumnTargetName |
				foreignColumnTargetName := line at: 8.
				targetTable columns
					detect: [ :el | el name = foreignColumnTargetName ]
					ifOne: [ :targetColumn | |columnReference |  columnReference := FamixSQLColumnReference new.
						columnReference column: targetColumn.
						foreignKey addForeignKeyColumnReference: columnReference.
						
						 ] ] ] 
]

{ #category : #accessing }
FamixSQLCSVImporter >> source [

	^ source
]

{ #category : #accessing }
FamixSQLCSVImporter >> source: anObject [

	source := anObject
]
