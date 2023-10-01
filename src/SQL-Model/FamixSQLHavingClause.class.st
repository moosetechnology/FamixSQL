"
I am a HAVING clause in a query
"
Class {
	#name : #FamixSQLHavingClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLHavingClause class >> annotation [

	<FMClass: #HavingClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
