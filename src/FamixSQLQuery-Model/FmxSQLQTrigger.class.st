"
I am a trigger. A trigger allows to define actions to performs when a specific event occurs on a table. Because a trigger can not exist without the table to which it listens to events, a trigger is contained in a table.
"
Class {
	#name : #FmxSQLQTrigger,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTNamedEntity + FmxSQLQBehaviouralEntity',
	#classTraits : 'FamixTNamedEntity classTrait + FmxSQLQBehaviouralEntity classTrait',
	#instVars : [
		'#firingAction => FMProperty',
		'#when => FMProperty',
		'#storedProcedure => FMOne type: #FmxSQLQTriggerStoredProcedure opposite: #triggers'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQTrigger class >> annotation [

	<FMClass: #Trigger super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQTrigger >> firingAction [

	<FMProperty: #firingAction type: #String>
	<generated>
	^ firingAction
]

{ #category : #accessing }
FmxSQLQTrigger >> firingAction: anObject [
	<generated>
	firingAction := anObject
]

{ #category : #accessing }
FmxSQLQTrigger >> storedProcedure [
	"Relation named: #storedProcedure type: #FmxSQLQTriggerStoredProcedure opposite: #triggers"

	<generated>
	^ storedProcedure
]

{ #category : #accessing }
FmxSQLQTrigger >> storedProcedure: anObject [

	<generated>
	storedProcedure := anObject
]

{ #category : #accessing }
FmxSQLQTrigger >> table [
	"Relation named: #table type: #FamixSQLTable opposite: #triggers"

	<generated>
	<container>
	<FMProperty: #table type: #FamixSQLTable opposite: #triggers>
	^ self attributeAt: #table ifAbsent: [ nil ]
]

{ #category : #accessing }
FmxSQLQTrigger >> table: anObject [

	<generated>
	self attributeAt: #table put: (FMMultivalueLink on: self update: #triggers from: self table to: anObject).
]

{ #category : #navigation }
FmxSQLQTrigger >> tableGroup [
	<generated>
	<navigation: 'Table'>
	^ MooseSpecializedGroup with: self table
]

{ #category : #accessing }
FmxSQLQTrigger >> when [

	<FMProperty: #when type: #String>
	<generated>
	^ when
]

{ #category : #accessing }
FmxSQLQTrigger >> when: anObject [
	<generated>
	when := anObject
]
