"
I am a select clause
"
Class {
	#name : #FmxSQLQSelectClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixSQLTWithColumnReference + FamixSQLTWithNamespaceReference + FamixSQLTWithTableReference + FamixTWithAccesses + FamixTWithInvocations + FmxSQLQTWithDerivedTableReference + FmxSQLQTWithViewReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait + FamixSQLTWithNamespaceReference classTrait + FamixSQLTWithTableReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FmxSQLQTWithDerivedTableReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQSelectClause class >> annotation [

	<FMClass: #SelectClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQSelectClause >> isSelectClause [

	<generated>
	^ true
]
