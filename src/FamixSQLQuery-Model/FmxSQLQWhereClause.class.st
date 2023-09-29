"
I am a where clause
"
Class {
	#name : #FmxSQLQWhereClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixTWithAccesses + FamixTWithInvocations + FmxSQLQTWithDerivedTableReference + FmxSQLQTWithReferencesGroupReference + FmxSQLQTWithViewReference',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FmxSQLQTWithDerivedTableReference classTrait + FmxSQLQTWithReferencesGroupReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQWhereClause class >> annotation [

	<FMClass: #WhereClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQWhereClause >> isWhereClause [

	<generated>
	^ true
]
