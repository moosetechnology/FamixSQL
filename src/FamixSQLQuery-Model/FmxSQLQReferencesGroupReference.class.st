"
TODO
"
Class {
	#name : #FmxSQLQReferencesGroupReference,
	#superclass : #FamixSQLReference,
	#traits : 'FmxSQLQTReferencesGroupReference + TEntityMetaLevelDependency',
	#classTraits : 'FmxSQLQTReferencesGroupReference classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQReferencesGroupReference class >> annotation [

	<FMClass: #ReferencesGroupReference super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
