"
I represent a Type in the database. I can be used for a column, a local variable, a parameter, etc...
"
Class {
	#name : #FamixSQLType,
	#superclass : #FamixSQLStructuralEntity,
	#instVars : [
		'#column => FMOne type: #FamixSQLColumn opposite: #type'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLType class >> annotation [

	<FMClass: #Type super: #FamixSQLStructuralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLType >> column [
	"Relation named: #column type: #FamixSQLColumn opposite: #type"

	<generated>
	<derived>
	^ column
]

{ #category : #accessing }
FamixSQLType >> column: anObject [

	<generated>
	column := anObject
]
