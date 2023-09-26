"
I represent a CHECK constraint as defined in SQL standard.
"
Class {
	#name : #FamixSQLCheckConstraint,
	#superclass : #FamixSQLEntity,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLCheckConstraint class >> annotation [

	<FMClass: #CheckConstraint super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^self
]
