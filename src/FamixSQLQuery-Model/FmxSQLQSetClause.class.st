"
I am a set clause
"
Class {
	#name : #FmxSQLQSetClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations + FmxSQLQTWithDerivedTableReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FmxSQLQTWithDerivedTableReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQSetClause class >> annotation [

	<FMClass: #SetClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQSetClause >> isSetClause [

	<generated>
	^ true
]
