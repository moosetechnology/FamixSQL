"
I am a FROM clause in a query
"
Class {
	#name : #FamixSQLFromClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLFromClause class >> annotation [

	<FMClass: #FromClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
