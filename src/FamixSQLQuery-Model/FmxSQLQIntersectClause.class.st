"
I am an intersect clause
"
Class {
	#name : #FmxSQLQIntersectClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixSQLTWithNamespaceReference + FamixSQLTWithTableReference + FmxSQLQTWithDerivedTableReference + FmxSQLQTWithViewReference',
	#classTraits : 'FamixSQLTWithNamespaceReference classTrait + FamixSQLTWithTableReference classTrait + FmxSQLQTWithDerivedTableReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQIntersectClause class >> annotation [

	<FMClass: #IntersectClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQIntersectClause >> isIntersectClause [

	<generated>
	^ true
]
