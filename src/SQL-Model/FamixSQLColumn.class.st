Class {
	#name : #FamixSQLColumn,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixSQLTColumn',
	#classTraits : 'FamixSQLTColumn classTrait',
	#instVars : [
		'#type => FMOne type: #FamixSQLType opposite: #column'
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

{ #category : #accessing }
FamixSQLColumn >> type [
	"Relation named: #type type: #FamixSQLType opposite: #column"

	<generated>
	^ type
]

{ #category : #accessing }
FamixSQLColumn >> type: anObject [

	<generated>
	type := anObject
]
