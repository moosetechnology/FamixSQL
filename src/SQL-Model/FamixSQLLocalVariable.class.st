"
I am a local variable of a stored procedure. I have a type.

## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentBehaviouralEntity` | `FamixTLocalVariable` | `localVariables` | `FamixTWithLocalVariables` | Behavioural entity declaring this local variable. belongsTo implementation|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeReferences` | `FamixSQLTWithTypeReference` | `referencer` | `FamixSQLTTypeReference` | |

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingAccesses` | `FamixTAccessible` | `variable` | `FamixTAccess` | All Famix accesses pointing to this structural entity|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `declaredType` | `FamixTTypedEntity` | `typedEntities` | `FamixTType` | Type of the entity, if any|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : #FamixSQLLocalVariable,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTWithTypeReference + FamixTAccessible + FamixTLocalVariable',
	#classTraits : 'FamixSQLTWithTypeReference classTrait + FamixTAccessible classTrait + FamixTLocalVariable classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLLocalVariable class >> annotation [

	<FMClass: #LocalVariable super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
