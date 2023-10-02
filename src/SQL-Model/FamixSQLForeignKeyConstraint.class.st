Class {
	#name : #FamixSQLForeignKeyConstraint,
	#superclass : #FamixSQLTableConstraint,
	#instVars : [
		'#foreignColumnReference => FMMany type: #FamixSQLForeignColumnReference opposite: #foreignKeyConstraint'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLForeignKeyConstraint class >> annotation [

	<FMClass: #ForeignKeyConstraint super: #FamixSQLTableConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLForeignKeyConstraint >> addForeignColumnReference: anObject [
	<generated>
	^ self foreignColumnReference add: anObject
]

{ #category : #accessing }
FamixSQLForeignKeyConstraint >> foreignColumnReference [
	"Relation named: #foreignColumnReference type: #FamixSQLForeignColumnReference opposite: #foreignKeyConstraint"

	<generated>
	<derived>
	^ foreignColumnReference
]

{ #category : #accessing }
FamixSQLForeignKeyConstraint >> foreignColumnReference: anObject [

	<generated>
	foreignColumnReference value: anObject
]
