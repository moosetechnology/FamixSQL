"
I am an union clause
"
Class {
	#name : #FmxSQLQUnionClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FmxSQLQTWithDerivedTableReference + FmxSQLQTWithViewReference',
	#classTraits : 'FmxSQLQTWithDerivedTableReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQUnionClause class >> annotation [

	<FMClass: #UnionClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQUnionClause >> isUnionClause [

	<generated>
	^ true
]
