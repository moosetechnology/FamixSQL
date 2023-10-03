"
I am an INTERSECT clause in a query
"
Class {
	#name : #FamixSQLIntersectClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLIntersectClause class >> annotation [

	<FMClass: #IntersectClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
