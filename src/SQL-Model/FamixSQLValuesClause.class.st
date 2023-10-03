"
I am a VALUES clause in a query
"
Class {
	#name : #FamixSQLValuesClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLValuesClause class >> annotation [

	<FMClass: #ValuesClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
