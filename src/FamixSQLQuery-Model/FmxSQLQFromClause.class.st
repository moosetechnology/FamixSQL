"
I am a from clause
"
Class {
	#name : #FmxSQLQFromClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixTWithAccesses + FamixTWithInvocations + FmxSQLQTWithDerivedTableReference + FmxSQLQTWithReferencesGroupReference + FmxSQLQTWithViewReference',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FmxSQLQTWithDerivedTableReference classTrait + FmxSQLQTWithReferencesGroupReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQFromClause class >> annotation [

	<FMClass: #FromClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQFromClause >> isFromClause [

	<generated>
	^ true
]
