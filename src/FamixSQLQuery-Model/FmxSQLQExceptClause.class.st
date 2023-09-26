"
I am an except clause
"
Class {
	#name : #FmxSQLQExceptClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixSQLTWithNamespaceReference + FamixSQLTWithTableReference + FmxSQLQTWithDerivedTableReference + FmxSQLQTWithViewReference',
	#classTraits : 'FamixSQLTWithNamespaceReference classTrait + FamixSQLTWithTableReference classTrait + FmxSQLQTWithDerivedTableReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQExceptClause class >> annotation [

	<FMClass: #ExceptClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQExceptClause >> isExceptClause [

	<generated>
	^ true
]
