"
I am reference to a column in a table of the model.
"
Class {
	#name : #FamixSQLColumnReference,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTColumnReference',
	#classTraits : 'FamixSQLTColumnReference classTrait',
	#instVars : [
		'#isWildCardReference => FMProperty'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumnReference class >> annotation [

	<FMClass: #ColumnReference super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLColumnReference >> isWildCardReference [

	<FMProperty: #isWildCardReference type: #Boolean>
	<generated>
	^ isWildCardReference
]

{ #category : #accessing }
FamixSQLColumnReference >> isWildCardReference: anObject [
	<generated>
	isWildCardReference := anObject
]
