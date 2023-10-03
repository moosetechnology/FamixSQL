"
I am a trigger. A trigger allows to define actions to performs when a specific event occurs on a table. Because a trigger can not exist without the table to which it listens to events, a trigger is contained in a table.
"
Class {
	#name : #FamixSQLTrigger,
	#superclass : #FamixSQLBehaviouralEntity,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixTNamespace',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixTNamespace classTrait',
	#instVars : [
		'#storedProcedure => FMOne type: #FamixSQLTriggerStoredProcedure opposite: #trigger'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLTrigger class >> annotation [

	<FMClass: #Trigger super: #FamixSQLBehaviouralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLTrigger >> storedProcedure [
	"Relation named: #storedProcedure type: #FamixSQLTriggerStoredProcedure opposite: #trigger"

	<generated>
	^ storedProcedure
]

{ #category : #accessing }
FamixSQLTrigger >> storedProcedure: anObject [

	<generated>
	storedProcedure := anObject
]
