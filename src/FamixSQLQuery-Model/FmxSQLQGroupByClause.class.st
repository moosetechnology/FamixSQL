"
I am a group by clause
"
Class {
	#name : #FmxSQLQGroupByClause,
	#superclass : #FmxSQLQClause,
	#traits : 'AnObsoleteFamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations + FmxSQLQTWithReferencesGroupReference + FmxSQLQTWithViewReference',
	#classTraits : 'AnObsoleteFamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FmxSQLQTWithReferencesGroupReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQGroupByClause class >> annotation [

	<FMClass: #GroupByClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQGroupByClause >> isGroupByClause [

	<generated>
	^ true
]
