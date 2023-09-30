Class {
	#name : #FamixSQLForeignKeyConstraint,
	#superclass : #FamixSQLTableConstraint,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLForeignKeyConstraint class >> annotation [

	<FMClass: #ForeignKeyConstraint super: #FamixSQLTableConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
