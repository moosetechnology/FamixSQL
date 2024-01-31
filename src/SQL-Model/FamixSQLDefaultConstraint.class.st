"
I represent a DEFAULT constraint on a column


"
Class {
	#name : #FamixSQLDefaultConstraint,
	#superclass : #FamixSQLColumnConstraint,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLDefaultConstraint class >> annotation [

	<FMClass: #DefaultConstraint super: #FamixSQLColumnConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
