"
I represent a NOT NULL constraint as defined in SQL standard.


"
Class {
	#name : #FamixSQLNotNullConstraint,
	#superclass : #FamixSQLColumnConstraint,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLNotNullConstraint class >> annotation [

	<FMClass: #NotNullConstraint super: #FamixSQLColumnConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
