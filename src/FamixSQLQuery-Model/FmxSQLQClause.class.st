"
I am an abstract clause
"
Class {
	#name : #FmxSQLQClause,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTSourceEntity + FmxSQLQTWithAlias + TEntityMetaLevelDependency',
	#classTraits : 'FamixTSourceEntity classTrait + FmxSQLQTWithAlias classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#query => FMOne type: #FmxSQLQCRUDQuery opposite: #clauses'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQClause class >> annotation [

	<FMClass: #Clause super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQClause >> query [
	"Relation named: #query type: #FmxSQLQCRUDQuery opposite: #clauses"

	<generated>
	<container>
	^ query
]

{ #category : #accessing }
FmxSQLQClause >> query: anObject [

	<generated>
	query := anObject
]

{ #category : #navigation }
FmxSQLQClause >> queryGroup [
	<generated>
	<navigation: 'Query'>
	^ MooseSpecializedGroup with: self query
]
