"
I am a returning clause
"
Class {
	#name : #FmxSQLQReturningClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations + FmxSQLQTWithReferencesGroupReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FmxSQLQTWithReferencesGroupReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQReturningClause class >> annotation [

	<FMClass: #ReturningClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQReturningClause >> isReturningClause [

	<generated>
	^ true
]
