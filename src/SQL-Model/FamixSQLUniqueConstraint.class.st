"
I represent a UNIQUE constraint as defined in SQL standard.


"
Class {
	#name : 'FamixSQLUniqueConstraint',
	#superclass : 'FamixSQLTableConstraint',
	#category : 'SQL-Model-Entities',
	#package : 'SQL-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixSQLUniqueConstraint class >> annotation [

	<FMClass: #UniqueConstraint super: #FamixSQLTableConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
