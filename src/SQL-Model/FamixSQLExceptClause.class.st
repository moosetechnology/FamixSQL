"
I am an EXCEPT clause in a query
"
Class {
	#name : #FamixSQLExceptClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLExceptClause class >> annotation [

	<FMClass: #ExceptClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
