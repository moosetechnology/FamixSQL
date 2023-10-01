"
I am an INTO clause in a query
"
Class {
	#name : #FamixSQLIntoClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLIntoClause class >> annotation [

	<FMClass: #IntoClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
