"
I am a having clause
"
Class {
	#name : #FmxSQLQHavingClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixSQLTWithColumnReference + FamixSQLTWithNamespaceReference + FamixSQLTWithTableReference + FamixTWithAccesses + FamixTWithInvocations + FmxSQLQTWithReferencesGroupReference + FmxSQLQTWithViewReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait + FamixSQLTWithNamespaceReference classTrait + FamixSQLTWithTableReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FmxSQLQTWithReferencesGroupReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQHavingClause class >> annotation [

	<FMClass: #HavingClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQHavingClause >> isHavingClause [

	<generated>
	^ true
]
