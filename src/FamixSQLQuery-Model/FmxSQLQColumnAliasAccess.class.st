Class {
	#name : #FmxSQLQColumnAliasAccess,
	#superclass : #FamixSQLReference,
	#traits : 'FamixTAccess + FmxSQLQTWithQualifiedReference',
	#classTraits : 'FamixTAccess classTrait + FmxSQLQTWithQualifiedReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQColumnAliasAccess class >> annotation [

	<FMClass: #ColumnAliasAccess super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
