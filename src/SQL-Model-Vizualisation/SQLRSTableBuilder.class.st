Class {
	#name : #SQLRSTableBuilder,
	#superclass : #RSObject,
	#instVars : [
		'boxColorBlock'
	],
	#category : #'SQL-Model-Vizualisation'
}

{ #category : #hooks }
SQLRSTableBuilder >> columnFor: column [

	| columnName |
	columnName := column name.
	column isPrimaryKeyColumn ifTrue: [ columnName := '!' , columnName ].
	column isForeignKeyColumn ifTrue: [ columnName := '#' , columnName ].
	^ HNode new
		  name: columnName;
		  rawModel: column;
		  yourself
]

{ #category : #hooks }
SQLRSTableBuilder >> columnsFor: aSQLTable [

	| columns |
	columns := aSQLTable columns.
	^ (columns sorted: [ :a :b | 
		   (a isPrimaryKeyColumn or: [ a isForeignKeyColumn ]) and: [ 
			   b isPrimaryKeyColumn not or: [ b isForeignKeyColumn not ] ] ]) 
		  collect: [ :m | self columnFor: m ]
]

{ #category : #hooks }
SQLRSTableBuilder >> shapeFor: aSQLTable [

	| tableNode |
	tableNode := HNode new
		             name: aSQLTable name;
		             rawModel: aSQLTable;
		             yourself.
	tableNode layout: RSVerticalLineLayout new.

	tableNode addAll: (self columnsFor: aSQLTable).
	^ tableNode
]
