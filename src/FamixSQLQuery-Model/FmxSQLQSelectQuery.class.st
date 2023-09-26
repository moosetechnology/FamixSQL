"
I am a SELECT query.
"
Class {
	#name : #FmxSQLQSelectQuery,
	#superclass : #FmxSQLQCRUDQuery,
	#traits : 'FmxSQLQTDefiningDerivedTables',
	#classTraits : 'FmxSQLQTDefiningDerivedTables classTrait',
	#instVars : [
		'#viewDefining => FMOne type: #FmxSQLQView opposite: #query',
		'#recordLocalVariables => FMMany type: #FmxSQLQRecordLocalVariable opposite: #queryBoundTo'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQSelectQuery class >> annotation [

	<FMClass: #SelectQuery super: #FmxSQLQCRUDQuery>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQSelectQuery >> addRecordLocalVariable: anObject [
	<generated>
	^ self recordLocalVariables add: anObject
]

{ #category : #accessing }
FmxSQLQSelectQuery >> recordLocalVariables [
	"Relation named: #recordLocalVariables type: #FmxSQLQRecordLocalVariable opposite: #queryBoundTo"

	<generated>
	<derived>
	^ recordLocalVariables
]

{ #category : #accessing }
FmxSQLQSelectQuery >> recordLocalVariables: anObject [

	<generated>
	recordLocalVariables value: anObject
]

{ #category : #accessing }
FmxSQLQSelectQuery >> viewDefining [
	"Relation named: #viewDefining type: #FmxSQLQView opposite: #query"

	<generated>
	<container>
	<derived>
	^ viewDefining
]

{ #category : #accessing }
FmxSQLQSelectQuery >> viewDefining: anObject [

	<generated>
	viewDefining := anObject
]

{ #category : #navigation }
FmxSQLQSelectQuery >> viewDefiningGroup [
	<generated>
	<navigation: 'ViewDefining'>
	^ MooseSpecializedGroup with: self viewDefining
]
