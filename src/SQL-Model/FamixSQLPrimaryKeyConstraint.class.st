Class {
	#name : #FamixSQLPrimaryKeyConstraint,
	#superclass : #FamixSQLConstraint,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLPrimaryKeyConstraint class >> annotation [

	<FMClass: #PrimaryKeyConstraint super: #FamixSQLConstraint>
	<package: #'SQL-Model'>
	<generated>
	^self
]
