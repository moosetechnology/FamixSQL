"
I represent a Type in the database. I can be used for a column, a local variable, a parameter, etc...
"
Class {
	#name : #FamixSQLType,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixSQLTAbstractType',
	#classTraits : 'FamixSQLTAbstractType classTrait',
	#instVars : [
		'#columns => FMMany type: #FamixSQLColumn opposite: #type'
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

{ #category : #adding }
FamixSQLType >> addColumn: anObject [
	<generated>
	^ self columns add: anObject
]

{ #category : #accessing }
FamixSQLType >> columns [
	"Relation named: #columns type: #FamixSQLColumn opposite: #type"

	<generated>
	<derived>
	^ columns
]

{ #category : #accessing }
FamixSQLType >> columns: anObject [

	<generated>
	columns value: anObject
]
