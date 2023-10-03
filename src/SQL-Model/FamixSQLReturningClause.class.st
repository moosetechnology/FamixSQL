"
I am a RETURNING clause in a query
"
Class {
	#name : #FamixSQLReturningClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLReturningClause class >> annotation [

	<FMClass: #ReturningClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
