"
I am an DELETE query.
"
Class {
	#name : #FmxSQLQDeleteQuery,
	#superclass : #FmxSQLQCRUDQuery,
	#traits : 'FmxSQLQTDefiningDerivedTables',
	#classTraits : 'FmxSQLQTDefiningDerivedTables classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQDeleteQuery class >> annotation [

	<FMClass: #DeleteQuery super: #FmxSQLQCRUDQuery>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
