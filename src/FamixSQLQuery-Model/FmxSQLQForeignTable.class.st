"
I am a foreign table, that is to say, my data source is not inside the database.
"
Class {
	#name : #FmxSQLQForeignTable,
	#superclass : #FamixSQLTable,
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQForeignTable class >> annotation [

	<FMClass: #ForeignTable super: #FamixSQLTable>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
