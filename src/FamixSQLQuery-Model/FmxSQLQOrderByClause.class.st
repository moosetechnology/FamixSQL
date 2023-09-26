"
I am an order by clause
"
Class {
	#name : #FmxSQLQOrderByClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixSQLTWithColumnReference + FamixSQLTWithNamespaceReference + FamixSQLTWithTableReference + FamixTWithAccesses + FamixTWithInvocations + FmxSQLQTWithReferencesGroupReference + FmxSQLQTWithViewReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait + FamixSQLTWithNamespaceReference classTrait + FamixSQLTWithTableReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FmxSQLQTWithReferencesGroupReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQOrderByClause class >> annotation [

	<FMClass: #OrderByClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQOrderByClause >> isOrderByClause [

	<generated>
	^ true
]
