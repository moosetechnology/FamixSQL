"
I am a cursor parameter
"
Class {
	#name : #FmxSQLQCursorParameter,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTAccessible + FamixTNamedEntity + FamixTParameter',
	#classTraits : 'FamixTAccessible classTrait + FamixTNamedEntity classTrait + FamixTParameter classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQCursorParameter class >> annotation [

	<FMClass: #CursorParameter super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQCursorParameter >> type [
	"Relation named: #type type: #FamixSQLAbstractType opposite: #cursorParameters"

	<generated>
	<FMProperty: #type type: #FamixSQLAbstractType opposite: #cursorParameters>
	^ self attributeAt: #type ifAbsent: [ nil ]
]

{ #category : #accessing }
FmxSQLQCursorParameter >> type: anObject [

	<generated>
	self attributeAt: #type put: (FMMultivalueLink on: self update: #cursorParameters from: self type to: anObject).
]
