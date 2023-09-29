Class {
	#name : #FamixSQLForeignKeyConstraint,
	#superclass : #FamixSQLTableConstraint,
	#instVars : [
		'#foreignKeyColumnReferences => FMMany type: #FamixSQLColumnReference opposite: #foreignKeySource'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLForeignKeyConstraint class >> annotation [

	<FMClass: #ForeignKeyConstraint super: #FamixSQLTableConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLForeignKeyConstraint >> addForeignKeyColumnReference: anObject [
	<generated>
	^ self foreignKeyColumnReferences add: anObject
]

{ #category : #accessing }
FamixSQLForeignKeyConstraint >> foreignKeyColumnReferences [
	"Relation named: #foreignKeyColumnReferences type: #FamixSQLColumnReference opposite: #foreignKeySource"

	<generated>
	<derived>
	<target>
	^ foreignKeyColumnReferences
]

{ #category : #accessing }
FamixSQLForeignKeyConstraint >> foreignKeyColumnReferences: anObject [

	<generated>
	foreignKeyColumnReferences value: anObject
]
