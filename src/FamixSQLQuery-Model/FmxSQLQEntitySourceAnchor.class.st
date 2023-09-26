"
I am a source anchor which anchor source code held by an entity with immediate source.
"
Class {
	#name : #FmxSQLQEntitySourceAnchor,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#instVars : [
		'#start => FMProperty',
		'#end => FMProperty',
		'#entity => FMOne type: #FmxSQLQTWithEntitySourceAnchor opposite: #anchorsOnIntervalsOfCode'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQEntitySourceAnchor class >> annotation [

	<FMClass: #EntitySourceAnchor super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQEntitySourceAnchor >> end [

	<FMProperty: #end type: #Number>
	<generated>
	^ end
]

{ #category : #accessing }
FmxSQLQEntitySourceAnchor >> end: anObject [
	<generated>
	end := anObject
]

{ #category : #accessing }
FmxSQLQEntitySourceAnchor >> entity [
	"Relation named: #entity type: #FmxSQLQTWithEntitySourceAnchor opposite: #anchorsOnIntervalsOfCode"

	<generated>
	^ entity
]

{ #category : #accessing }
FmxSQLQEntitySourceAnchor >> entity: anObject [

	<generated>
	entity := anObject
]

{ #category : #testing }
FmxSQLQEntitySourceAnchor >> isEntitySourceAnchor [

	<generated>
	^ true
]

{ #category : #accessing }
FmxSQLQEntitySourceAnchor >> start [

	<FMProperty: #start type: #Number>
	<generated>
	^ start
]

{ #category : #accessing }
FmxSQLQEntitySourceAnchor >> start: anObject [
	<generated>
	start := anObject
]
