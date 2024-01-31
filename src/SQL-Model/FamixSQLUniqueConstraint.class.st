"
I represent a UNIQUE constraint as defined in SQL standard.


"
Class {
	#name : #FamixSQLUniqueConstraint,
	#superclass : #FamixSQLTableConstraint,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLUniqueConstraint class >> annotation [

	<FMClass: #UniqueConstraint super: #FamixSQLTableConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
