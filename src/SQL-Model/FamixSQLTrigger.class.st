"
I am a trigger. A trigger allows to define actions to performs when a specific event occurs on a table. Because a trigger can not exist without the table to which it listens to events, a trigger is contained in a table.

## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `references` | `FamixSQLTWithColumnContainerReference` | `referencer` | `FamixSQLTColumnContainerReference` | |

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|
| `storedProcedure` | `FamixSQLTrigger` | `trigger` | `FamixSQLTriggerStoredProcedure` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

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
