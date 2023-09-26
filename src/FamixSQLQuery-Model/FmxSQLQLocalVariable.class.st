"
I am a local variable of a stored procedure. I have a type.
"
Class {
	#name : #FmxSQLQLocalVariable,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTAccessible + FamixTLocalVariable + FamixTNamedEntity',
	#classTraits : 'FamixTAccessible classTrait + FamixTLocalVariable classTrait + FamixTNamedEntity classTrait',
	#instVars : [
		'#accesses => FMMany type: #FmxSQLQLocalVariableAccess opposite: #localVariable'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQLocalVariable class >> annotation [

	<FMClass: #LocalVariable super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQLocalVariable >> accesses [
	"Relation named: #accesses type: #FmxSQLQLocalVariableAccess opposite: #localVariable"

	<generated>
	<derived>
	^ accesses
]

{ #category : #accessing }
FmxSQLQLocalVariable >> accesses: anObject [

	<generated>
	accesses value: anObject
]

{ #category : #adding }
FmxSQLQLocalVariable >> addAccess: anObject [
	<generated>
	^ self accesses add: anObject
]

{ #category : #accessing }
FmxSQLQLocalVariable >> type [
	"Relation named: #type type: #FamixSQLAbstractType opposite: #localVariables"

	<generated>
	<FMProperty: #type type: #FamixSQLAbstractType opposite: #localVariables>
	^ self attributeAt: #type ifAbsent: [ nil ]
]

{ #category : #accessing }
FmxSQLQLocalVariable >> type: anObject [

	<generated>
	self attributeAt: #type put: (FMMultivalueLink on: self update: #localVariables from: self type to: anObject).
]
