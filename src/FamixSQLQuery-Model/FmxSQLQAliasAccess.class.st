"
I am an access to an alias.
"
Class {
	#name : #FmxSQLQAliasAccess,
	#superclass : #FamixSQLReference,
	#traits : 'FamixTAccess + FmxSQLQTWithQualifiedReference',
	#classTraits : 'FamixTAccess classTrait + FmxSQLQTWithQualifiedReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQAliasAccess class >> annotation [

	<FMClass: #AliasAccess super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQAliasAccess >> isAliasAccess [

	<generated>
	^ true
]
