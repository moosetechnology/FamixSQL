Class {
	#name : #FmxSQLQColumnsContainerAliasAccess,
	#superclass : #AnObsoleteFamixSQLReference,
	#traits : 'FamixTAccess + FmxSQLQTWithQualifiedReference',
	#classTraits : 'FamixTAccess classTrait + FmxSQLQTWithQualifiedReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQColumnsContainerAliasAccess class >> annotation [

	<FMClass: #ColumnsContainerAliasAccess super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
