"
I am an except clause
"
Class {
	#name : #FmxSQLQExceptClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FmxSQLQTWithDerivedTableReference + FmxSQLQTWithViewReference',
	#classTraits : 'FmxSQLQTWithDerivedTableReference classTrait + FmxSQLQTWithViewReference classTrait',
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
