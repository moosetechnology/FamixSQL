"
I am a Values clause
"
Class {
	#name : #FmxSQLQValuesClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixTWithAccesses + FamixTWithInvocations + FmxSQLQTWithDerivedTableReference',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FmxSQLQTWithDerivedTableReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQValuesClause class >> annotation [

	<FMClass: #ValuesClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQValuesClause >> isValuesClause [

	<generated>
	^ true
]
