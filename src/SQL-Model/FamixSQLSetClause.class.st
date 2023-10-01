"
I am a SET clause in a query
"
Class {
	#name : #FamixSQLSetClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLSetClause class >> annotation [

	<FMClass: #SetClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
