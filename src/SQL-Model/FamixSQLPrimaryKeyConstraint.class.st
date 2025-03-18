Class {
	#name : 'FamixSQLPrimaryKeyConstraint',
	#superclass : 'FamixSQLTableConstraint',
	#category : 'SQL-Model-Entities',
	#package : 'SQL-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixSQLPrimaryKeyConstraint class >> annotation [

	<FMClass: #PrimaryKeyConstraint super: #FamixSQLTableConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
