"
I am reference to a column in a table of the model.

## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `referencer` | `FamixSQLTColumnReference` | `columnReferences` | `FamixSQLTWithColumnReference` | |

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `column` | `FamixSQLTColumnReference` | `incomingReferences` | `FamixSQLTColumn` | |

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `isWildCardReference` | `Boolean` | nil | |

"
Class {
	#name : #FamixSQLColumnReference,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTColumnReference',
	#classTraits : 'FamixSQLTColumnReference classTrait',
	#instVars : [
		'#isWildCardReference => FMProperty'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumnReference class >> annotation [

	<FMClass: #ColumnReference super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLColumnReference >> isWildCardReference [

	<FMProperty: #isWildCardReference type: #Boolean>
	<generated>
	^ isWildCardReference
]

{ #category : #accessing }
FamixSQLColumnReference >> isWildCardReference: anObject [
	<generated>
	isWildCardReference := anObject
]
