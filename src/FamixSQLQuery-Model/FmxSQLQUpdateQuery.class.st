"
I am an UPDATE query.
"
Class {
	#name : #FmxSQLQUpdateQuery,
	#superclass : #FmxSQLQCRUDQuery,
	#traits : 'FmxSQLQTDefiningDerivedTables',
	#classTraits : 'FmxSQLQTDefiningDerivedTables classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQUpdateQuery class >> annotation [

	<FMClass: #UpdateQuery super: #FmxSQLQCRUDQuery>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQUpdateQuery >> table [
	"Relation named: #table type: #FamixSQLTable opposite: #updateQueries"

	<generated>
	<FMProperty: #table type: #FamixSQLTable opposite: #updateQueries>
	^ self attributeAt: #table ifAbsent: [ nil ]
]

{ #category : #accessing }
FmxSQLQUpdateQuery >> table: anObject [

	<generated>
	self attributeAt: #table put: (FMMultivalueLink on: self update: #updateQueries from: self table to: anObject).
]
