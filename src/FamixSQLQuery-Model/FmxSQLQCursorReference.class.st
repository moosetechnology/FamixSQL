"
I am a reference to a cursor
"
Class {
	#name : #FmxSQLQCursorReference,
	#superclass : #FamixSQLReference,
	#traits : 'FmxSQLQTWithQualifiedReference',
	#classTraits : 'FmxSQLQTWithQualifiedReference classTrait',
	#instVars : [
		'#cursor => FMOne type: #FmxSQLQCursor opposite: #references',
		'#source => FMOne type: #FmxSQLQTWithCursorReference opposite: #outgoingCursorReferences'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQCursorReference class >> annotation [

	<FMClass: #CursorReference super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQCursorReference >> cursor [
	"Relation named: #cursor type: #FmxSQLQCursor opposite: #references"

	<generated>
	<target>
	^ cursor
]

{ #category : #accessing }
FmxSQLQCursorReference >> cursor: anObject [

	<generated>
	cursor := anObject
]

{ #category : #accessing }
FmxSQLQCursorReference >> source [
	"Relation named: #source type: #FmxSQLQTWithCursorReference opposite: #outgoingCursorReferences"

	<generated>
	<source>
	^ source
]

{ #category : #accessing }
FmxSQLQCursorReference >> source: anObject [

	<generated>
	source := anObject
]
