"
I am a SELECT clause in a query
"
Class {
	#name : #FamixSQLSelectClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLSelectClause class >> annotation [

	<FMClass: #SelectClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
