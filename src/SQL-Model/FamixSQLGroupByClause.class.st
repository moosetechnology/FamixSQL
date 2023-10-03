"
I am a GROUP BY clause in a query
"
Class {
	#name : #FamixSQLGroupByClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLGroupByClause class >> annotation [

	<FMClass: #GroupByClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
