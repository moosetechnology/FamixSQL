"
I am a stored procedure. That is to say, a function that is defined inside the database.

## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `localVariables` | `FamixTWithLocalVariables` | `parentBehaviouralEntity` | `FamixTLocalVariable` | Variables locally defined by this behaviour.|
| `parameters` | `FamixTWithParameters` | `parentBehaviouralEntity` | `FamixTParameter` | List of formal parameters declared by this behaviour.|
| `queries` | `FamixSQLTQueryContainer` | `containerEntity` | `FamixSQLTQuery` | |

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `accesses` | `FamixTWithAccesses` | `accessor` | `FamixTAccess` | Accesses to variables made by this behaviour.|
| `columnReferences` | `FamixSQLTWithColumnReference` | `referencer` | `FamixSQLTColumnReference` | |
| `outgoingInvocations` | `FamixTWithInvocations` | `sender` | `FamixTInvocation` | Outgoing invocations sent by this behaviour.|
| `outgoingReferences` | `FamixTWithReferences` | `referencer` | `FamixTReference` | References from this entity to other entities.|
| `references` | `FamixSQLTWithColumnContainerReference` | `referencer` | `FamixSQLTColumnContainerReference` | |
| `typeReferences` | `FamixSQLTWithTypeReference` | `referencer` | `FamixSQLTTypeReference` | |

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingInvocations` | `FamixTInvocable` | `candidates` | `FamixTInvocation` | Incoming invocations from other behaviours computed by the candidate operator.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : #FamixSQLStoredProcedure,
	#superclass : #FamixSQLBehaviouralEntity,
	#traits : 'FamixSQLTQueryContainer + FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixSQLTWithTypeReference + FamixTInvocable + FamixTNamespace + FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables + FamixTWithParameters + FamixTWithReferences',
	#classTraits : 'FamixSQLTQueryContainer classTrait + FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixSQLTWithTypeReference classTrait + FamixTInvocable classTrait + FamixTNamespace classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait + FamixTWithReferences classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLStoredProcedure class >> annotation [

	<FMClass: #StoredProcedure super: #FamixSQLBehaviouralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #testing }
FamixSQLStoredProcedure >> isStoredProcedure [

	<generated>
	^ true
]
