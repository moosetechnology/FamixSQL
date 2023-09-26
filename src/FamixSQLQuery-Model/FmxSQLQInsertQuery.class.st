"
I am an INSERT query.
"
Class {
	#name : #FmxSQLQInsertQuery,
	#superclass : #FmxSQLQCRUDQuery,
	#traits : 'FmxSQLQTDefiningDerivedTables',
	#classTraits : 'FmxSQLQTDefiningDerivedTables classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQInsertQuery class >> annotation [

	<FMClass: #InsertQuery super: #FmxSQLQCRUDQuery>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
