"
I am a view. I can be used transparently as a table but I do not hold data. My data are fetched by the SELECT query which defines myself.

## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columns` | `FamixSQLTColumnContainer` | `columnsContainer` | `FamixSQLTColumn` | |
| `queries` | `FamixSQLTQueryContainer` | `containerEntity` | `FamixSQLTQuery` | |

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingReferences` | `FamixSQLTColumnContainer` | `columnContainer` | `FamixSQLTColumnContainerReference` | |

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
	#name : #FamixSQLView,
	#superclass : #FamixSQLBehaviouralEntity,
	#traits : 'FamixSQLTColumnContainer + FamixSQLTQueryContainer + FamixTNamespace',
	#classTraits : 'FamixSQLTColumnContainer classTrait + FamixSQLTQueryContainer classTrait + FamixTNamespace classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLView class >> annotation [

	<FMClass: #View super: #FamixSQLBehaviouralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #testing }
FamixSQLView >> isView [

	<generated>
	^ true
]
