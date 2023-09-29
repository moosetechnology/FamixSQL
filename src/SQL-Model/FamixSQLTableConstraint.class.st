"
I am an abstract class for constraints on Tables
"
Class {
	#name : #FamixSQLTableConstraint,
	#superclass : #FamixSQLConstraint,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLTableConstraint class >> annotation [

	<FMClass: #TableConstraint super: #FamixSQLConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
