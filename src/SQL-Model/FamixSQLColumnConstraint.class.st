"
I am an abstract class for constraints on Columns
"
Class {
	#name : #FamixSQLColumnConstraint,
	#superclass : #FamixSQLConstraint,
	#traits : 'FamixSQLTWithColumnReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumnConstraint class >> annotation [

	<FMClass: #ColumnConstraint super: #FamixSQLConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
