"
I am a derived table. A derived table is a temporary table created to store temporarily the results of a sub-select query in a select query. Such tables are not globally named as a Tableor a View because they can not be accessed outside the query in which they are computed (which is also the query defining them). Nonetheless, they can get an alias to be referenced inside the query. .
"
Class {
	#name : #FmxSQLQDerivedTable,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTNamedEntity + FmxSQLQBehaviouralEntity + FmxSQLQTQueryContainer',
	#classTraits : 'FamixTNamedEntity classTrait + FmxSQLQBehaviouralEntity classTrait + FmxSQLQTQueryContainer classTrait',
	#instVars : [
		'#parentQuery => FMOne type: #FmxSQLQTDefiningDerivedTables opposite: #derivedTablesDefined',
		'#query => FMOne type: #FmxSQLQCRUDQuery opposite: #derivedTableDefining',
		'#references => FMMany type: #FmxSQLQDerivedTableReference opposite: #derivedTable'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQDerivedTable class >> annotation [

	<FMClass: #DerivedTable super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQDerivedTable >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #accessing }
FmxSQLQDerivedTable >> parentQuery [
	"Relation named: #parentQuery type: #FmxSQLQTDefiningDerivedTables opposite: #derivedTablesDefined"

	<generated>
	<container>
	^ parentQuery
]

{ #category : #accessing }
FmxSQLQDerivedTable >> parentQuery: anObject [

	<generated>
	parentQuery := anObject
]

{ #category : #navigation }
FmxSQLQDerivedTable >> parentQueryGroup [
	<generated>
	<navigation: 'ParentQuery'>
	^ MooseSpecializedGroup with: self parentQuery
]

{ #category : #accessing }
FmxSQLQDerivedTable >> query [
	"Relation named: #query type: #FmxSQLQCRUDQuery opposite: #derivedTableDefining"

	<generated>
	^ query
]

{ #category : #accessing }
FmxSQLQDerivedTable >> query: anObject [

	<generated>
	query := anObject
]

{ #category : #navigation }
FmxSQLQDerivedTable >> queryGroup [
	<generated>
	<navigation: 'Query'>
	^ MooseSpecializedGroup with: self query
]

{ #category : #accessing }
FmxSQLQDerivedTable >> references [
	"Relation named: #references type: #FmxSQLQDerivedTableReference opposite: #derivedTable"

	<generated>
	<derived>
	^ references
]

{ #category : #accessing }
FmxSQLQDerivedTable >> references: anObject [

	<generated>
	references value: anObject
]
