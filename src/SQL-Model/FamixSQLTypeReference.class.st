"
I am reference to a type of the model.

## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `referencer` | `FamixSQLTTypeReference` | `typeReferences` | `FamixSQLTWithTypeReference` | |

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `type` | `FamixSQLTTypeReference` | `incomingReferences` | `FamixSQLTType` | |

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

"
Class {
	#name : #FamixSQLTypeReference,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTTypeReference + FamixTAssociation',
	#classTraits : 'FamixSQLTTypeReference classTrait + FamixTAssociation classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLTypeReference class >> annotation [

	<FMClass: #TypeReference super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
