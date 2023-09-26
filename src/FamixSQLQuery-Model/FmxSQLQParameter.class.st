"
I am a parameter of a stored procedure. I have a type.
"
Class {
	#name : #FmxSQLQParameter,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTAccessible + FamixTNamedEntity + FamixTParameter',
	#classTraits : 'FamixTAccessible classTrait + FamixTNamedEntity classTrait + FamixTParameter classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQParameter class >> annotation [

	<FMClass: #Parameter super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQParameter >> type [
	"Relation named: #type type: #FamixSQLAbstractType opposite: #parameters"

	<generated>
	<FMProperty: #type type: #FamixSQLAbstractType opposite: #parameters>
	^ self attributeAt: #type ifAbsent: [ nil ]
]

{ #category : #accessing }
FmxSQLQParameter >> type: anObject [

	<generated>
	self attributeAt: #type put: (FMMultivalueLink on: self update: #parameters from: self type to: anObject).
]
