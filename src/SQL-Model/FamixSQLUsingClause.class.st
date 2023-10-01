"
I am a USING clause in a query
"
Class {
	#name : #FamixSQLUsingClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLUsingClause class >> annotation [

	<FMClass: #UsingClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
