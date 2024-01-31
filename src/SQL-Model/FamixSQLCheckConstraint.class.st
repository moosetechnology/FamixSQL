"
I represent a CHECK constraint as defined in SQL standard.


"
Class {
	#name : #FamixSQLCheckConstraint,
	#superclass : #FamixSQLTableConstraint,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLCheckConstraint class >> annotation [

	<FMClass: #CheckConstraint super: #FamixSQLTableConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
