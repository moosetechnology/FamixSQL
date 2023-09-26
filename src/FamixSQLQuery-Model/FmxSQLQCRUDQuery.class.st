"
I am an abstract superclass for Create Read Update Delete (CRUD) queries.

The Create query is the INSERT query in SQL.

The Read query is the SELECT query in SQL.

The Update query is the UPDATE query in SQL.

The Delete query is the DELETE query in SQL.

My subclasses represent these four queries.
"
Class {
	#name : #FmxSQLQCRUDQuery,
	#superclass : #FmxSQLQEntity,
	#traits : 'TEntityMetaLevelDependency',
	#classTraits : 'TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#clauses => FMMany type: #FmxSQLQClause opposite: #query',
		'#container => FMOne type: #FmxSQLQTQueryContainer opposite: #queries',
		'#derivedTableDefining => FMOne type: #FmxSQLQDerivedTable opposite: #query'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQCRUDQuery class >> annotation [

	<FMClass: #CRUDQuery super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQCRUDQuery >> addClause: anObject [
	<generated>
	^ self clauses add: anObject
]

{ #category : #accessing }
FmxSQLQCRUDQuery >> clauses [
	"Relation named: #clauses type: #FmxSQLQClause opposite: #query"

	<generated>
	<derived>
	^ clauses
]

{ #category : #accessing }
FmxSQLQCRUDQuery >> clauses: anObject [

	<generated>
	clauses value: anObject
]

{ #category : #navigation }
FmxSQLQCRUDQuery >> clausesGroup [
	<generated>
	<navigation: 'Clauses'>
	^ MooseSpecializedGroup withAll: self clauses asSet
]

{ #category : #accessing }
FmxSQLQCRUDQuery >> container [
	"Relation named: #container type: #FmxSQLQTQueryContainer opposite: #queries"

	<generated>
	<container>
	^ container
]

{ #category : #accessing }
FmxSQLQCRUDQuery >> container: anObject [

	<generated>
	container := anObject
]

{ #category : #navigation }
FmxSQLQCRUDQuery >> containerGroup [
	<generated>
	<navigation: 'Container'>
	^ MooseSpecializedGroup with: self container
]

{ #category : #accessing }
FmxSQLQCRUDQuery >> derivedTableDefining [
	"Relation named: #derivedTableDefining type: #FmxSQLQDerivedTable opposite: #query"

	<generated>
	<container>
	<derived>
	^ derivedTableDefining
]

{ #category : #accessing }
FmxSQLQCRUDQuery >> derivedTableDefining: anObject [

	<generated>
	derivedTableDefining := anObject
]

{ #category : #navigation }
FmxSQLQCRUDQuery >> derivedTableDefiningGroup [
	<generated>
	<navigation: 'DerivedTableDefining'>
	^ MooseSpecializedGroup with: self derivedTableDefining
]
