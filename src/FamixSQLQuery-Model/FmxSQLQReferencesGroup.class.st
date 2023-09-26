"
I model a group of refererences to other entities.

I provide an abstraction to avoid modelling the AST in the MM.

For example I can appear in select query like:

SELECT fct1(id)+fct2(id) AS id -- <-- Here a reference group is created containing ref to fct1, fct2
FROM table
"
Class {
	#name : #FmxSQLQReferencesGroup,
	#superclass : #FmxSQLQEntity,
	#traits : 'TEntityMetaLevelDependency',
	#classTraits : 'TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#incomingReferencesGroupReference => FMMany type: #FmxSQLQTReferencesGroupReference opposite: #referencesGroup'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQReferencesGroup class >> annotation [

	<FMClass: #ReferencesGroup super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQReferencesGroup >> addIncomingReferencesGroupReference: anObject [
	<generated>
	^ self incomingReferencesGroupReference add: anObject
]

{ #category : #adding }
FmxSQLQReferencesGroup >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #accessing }
FmxSQLQReferencesGroup >> incomingReferencesGroupReference [
	"Relation named: #incomingReferencesGroupReference type: #FmxSQLQTReferencesGroupReference opposite: #referencesGroup"

	<generated>
	<derived>
	^ incomingReferencesGroupReference
]

{ #category : #accessing }
FmxSQLQReferencesGroup >> incomingReferencesGroupReference: anObject [

	<generated>
	incomingReferencesGroupReference value: anObject
]

{ #category : #accessing }
FmxSQLQReferencesGroup >> references [
	"Relation named: #references type: #FamixSQLReference opposite: #belongsToGroup"

	<generated>
	<derived>
	<FMProperty: #references type: #FamixSQLReference opposite: #belongsToGroup>
	^ self attributeAt: #references ifAbsentPut: [ FMMultivalueLink on: self opposite: #belongsToGroup: ]
]

{ #category : #accessing }
FmxSQLQReferencesGroup >> references: anObject [

	<generated>
	self references value: anObject
]

{ #category : #navigation }
FmxSQLQReferencesGroup >> referencesGroup [
	<generated>
	<navigation: 'References'>
	^ MooseSpecializedGroup withAll: self references asSet
]
