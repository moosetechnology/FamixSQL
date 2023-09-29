Class {
	#name : #FamixSQLPrimaryKeyConstraint,
	#superclass : #FamixSQLTableConstraint,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLPrimaryKeyConstraint class >> annotation [

	<FMClass: #PrimaryKeyConstraint super: #FamixSQLTableConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
