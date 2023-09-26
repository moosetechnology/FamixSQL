"
I am a reference to a view.
"
Class {
	#name : #FmxSQLQViewReference,
	#superclass : #FamixSQLReference,
	#traits : 'FmxSQLQTWithQualifiedReference',
	#classTraits : 'FmxSQLQTWithQualifiedReference classTrait',
	#instVars : [
		'#source => FMOne type: #FmxSQLQTWithViewReference opposite: #outgoingViewReferences',
		'#view => FMOne type: #FmxSQLQView opposite: #references'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQViewReference class >> annotation [

	<FMClass: #ViewReference super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQViewReference >> source [
	"Relation named: #source type: #FmxSQLQTWithViewReference opposite: #outgoingViewReferences"

	<generated>
	<source>
	^ source
]

{ #category : #accessing }
FmxSQLQViewReference >> source: anObject [

	<generated>
	source := anObject
]

{ #category : #accessing }
FmxSQLQViewReference >> view [
	"Relation named: #view type: #FmxSQLQView opposite: #references"

	<generated>
	<target>
	^ view
]

{ #category : #accessing }
FmxSQLQViewReference >> view: anObject [

	<generated>
	view := anObject
]
