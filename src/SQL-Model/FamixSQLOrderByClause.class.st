"
I am an ORDER BY clause in a query
"
Class {
	#name : #FamixSQLOrderByClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLOrderByClause class >> annotation [

	<FMClass: #OrderByClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
