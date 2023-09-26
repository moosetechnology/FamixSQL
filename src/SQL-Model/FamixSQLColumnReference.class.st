"
I am reference to a column in a table of the model.
"
Class {
	#name : #FamixSQLColumnReference,
	#superclass : #FamixSQLReference,
	#instVars : [
		'#source => FMOne type: #FamixSQLTWithColumnReference opposite: #columnReferences',
		'#column => FMOne type: #FamixSQLColumn opposite: #references',
		'#foreignKeySource => FMOne type: #FamixSQLForeignKeyConstraint opposite: #foreignKeyColumnReferences'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumnReference class >> annotation [

	<FMClass: #ColumnReference super: #FamixSQLReference>
	<package: #'SQL-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FamixSQLColumnReference >> column [
	"Relation named: #column type: #FamixSQLColumn opposite: #references"

	<generated>
	<target>
	^ column
]

{ #category : #accessing }
FamixSQLColumnReference >> column: anObject [

	<generated>
	column := anObject
]

{ #category : #accessing }
FamixSQLColumnReference >> foreignKeySource [
	"Relation named: #foreignKeySource type: #FamixSQLForeignKeyConstraint opposite: #foreignKeyColumnReferences"

	<generated>
	<source>
	^ foreignKeySource
]

{ #category : #accessing }
FamixSQLColumnReference >> foreignKeySource: anObject [

	<generated>
	foreignKeySource := anObject
]

{ #category : #accessing }
FamixSQLColumnReference >> source [
	"Relation named: #source type: #FamixSQLTWithColumnReference opposite: #columnReferences"

	<generated>
	<source>
	^ source
]

{ #category : #accessing }
FamixSQLColumnReference >> source: anObject [

	<generated>
	source := anObject
]
