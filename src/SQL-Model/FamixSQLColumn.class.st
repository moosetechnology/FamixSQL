Class {
	#name : #FamixSQLColumn,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixSQLTColumn',
	#classTraits : 'FamixSQLTColumn classTrait',
	#instVars : [
		'#references => FMMany type: #FamixSQLColumnReference opposite: #column',
		'#type => FMOne type: #FamixSQLType opposite: #columns'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumn class >> annotation [

	<FMClass: #Column super: #FamixSQLStructuralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLColumn >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #accessing }
FamixSQLColumn >> references [
	"Relation named: #references type: #FamixSQLColumnReference opposite: #column"

	<generated>
	<derived>
	^ references
]

{ #category : #accessing }
FamixSQLColumn >> references: anObject [

	<generated>
	references value: anObject
]

{ #category : #accessing }
FamixSQLColumn >> type [
	"Relation named: #type type: #FamixSQLType opposite: #columns"

	<generated>
	^ type
]

{ #category : #accessing }
FamixSQLColumn >> type: anObject [

	<generated>
	type := anObject
]
