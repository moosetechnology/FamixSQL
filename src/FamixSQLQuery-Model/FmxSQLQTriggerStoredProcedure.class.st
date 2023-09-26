"
I am a special stored procedure used to define the actions a trigger perform.

This concept does not exists in all DBMS (for example, in MySQL a trigger has a body directly defined when defining the trigger). Nevertheless, it allows to unify the different approach take by different DBMS. In the meta-model, a trigger is always defined as referencing a trigger stored procedure. For DBMS where it is not implemented like that in reality, the trigger stored procedure as no name because it is virtual.
"
Class {
	#name : #FmxSQLQTriggerStoredProcedure,
	#superclass : #FmxSQLQStoredProcedure,
	#instVars : [
		'#triggers => FMMany type: #FmxSQLQTrigger opposite: #storedProcedure'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQTriggerStoredProcedure class >> annotation [

	<FMClass: #TriggerStoredProcedure super: #FmxSQLQStoredProcedure>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTriggerStoredProcedure >> addColumnsReferenced: anObject [
	<generated>
	^ self columnsReferenced add: anObject
]

{ #category : #adding }
FmxSQLQTriggerStoredProcedure >> addTrigger: anObject [
	<generated>
	^ self triggers add: anObject
]

{ #category : #accessing }
FmxSQLQTriggerStoredProcedure >> columnsReferenced [
	"Relation named: #columnsReferenced type: #FamixSQLColumnReference opposite: #triggerStoredProceduresReferencing"

	<generated>
	<derived>
	<FMProperty: #columnsReferenced type: #FamixSQLColumnReference opposite: #triggerStoredProceduresReferencing>
	^ self attributeAt: #columnsReferenced ifAbsentPut: [ FMMultivalueLink on: self opposite: #triggerStoredProceduresReferencing: ]
]

{ #category : #accessing }
FmxSQLQTriggerStoredProcedure >> columnsReferenced: anObject [

	<generated>
	self columnsReferenced value: anObject
]

{ #category : #navigation }
FmxSQLQTriggerStoredProcedure >> columnsReferencedGroup [
	<generated>
	<navigation: 'ColumnsReferenced'>
	^ MooseSpecializedGroup withAll: self columnsReferenced asSet
]

{ #category : #testing }
FmxSQLQTriggerStoredProcedure >> isTriggerStoredProcedure [

	<generated>
	^ true
]

{ #category : #accessing }
FmxSQLQTriggerStoredProcedure >> triggers [
	"Relation named: #triggers type: #FmxSQLQTrigger opposite: #storedProcedure"

	<generated>
	<derived>
	^ triggers
]

{ #category : #accessing }
FmxSQLQTriggerStoredProcedure >> triggers: anObject [

	<generated>
	triggers value: anObject
]
