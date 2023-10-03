"
I am a WHERE clause in a query
"
Class {
	#name : #FamixSQLWhereClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLWhereClause class >> annotation [

	<FMClass: #WhereClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
