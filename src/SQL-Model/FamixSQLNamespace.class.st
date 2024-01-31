"
I am a namespace. I hold entities to define a name scope where name duplicates are forbidden.

## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `table` | `FamixSQLNamespace` | `parentNamespace` | `FamixSQLTable` | |

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
	#name : #FamixSQLNamespace,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixTNamespace',
	#classTraits : 'FamixTNamespace classTrait',
	#instVars : [
		'#table => FMMany type: #FamixSQLTable opposite: #parentNamespace'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixSQLStructuralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLNamespace >> addTable: anObject [
	<generated>
	^ self table add: anObject
]

{ #category : #accessing }
FamixSQLNamespace >> table [
	"Relation named: #table type: #FamixSQLTable opposite: #parentNamespace"

	<generated>
	<derived>
	^ table
]

{ #category : #accessing }
FamixSQLNamespace >> table: anObject [

	<generated>
	table value: anObject
]

{ #category : #navigation }
FamixSQLNamespace >> tableGroup [
	<generated>
	<navigation: 'Table'>
	^ MooseSpecializedGroup withAll: self table asSet
]
