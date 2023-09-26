Class {
	#name : #FamixSQLColumn,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTColumn',
	#classTraits : 'FamixSQLTColumn classTrait',
	#instVars : [
		'#name => FMProperty',
		'#references => FMMany type: #FamixSQLColumnReference opposite: #column'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumn class >> annotation [

	<FMClass: #Column super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^self
]

{ #category : #adding }
FamixSQLColumn >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #accessing }
FamixSQLColumn >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FamixSQLColumn >> name: anObject [
	<generated>
	name := anObject
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
