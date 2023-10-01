"
I am a UNION clause in a query
"
Class {
	#name : #FamixSQLUnionClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLUnionClause class >> annotation [

	<FMClass: #UnionClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
