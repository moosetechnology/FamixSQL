"
I am an using clause
"
Class {
	#name : #FmxSQLQUsingClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FmxSQLQTWithDerivedTableReference',
	#classTraits : 'FmxSQLQTWithDerivedTableReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQUsingClause class >> annotation [

	<FMClass: #UsingClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQUsingClause >> isUsingClause [

	<generated>
	^ true
]
