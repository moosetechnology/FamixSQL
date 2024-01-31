"
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

"
Trait {
	#name : #FamixSQLTColumnReference,
	#instVars : [
		'#referencer => FMOne type: #FamixSQLTWithColumnReference opposite: #columnReferences',
		'#column => FMOne type: #FamixSQLTColumn opposite: #incomingReferences'
	],
	#traits : 'FamixTAssociation',
	#classTraits : 'FamixTAssociation classTrait',
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTColumnReference classSide >> annotation [

	<FMClass: #TColumnReference super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLTColumnReference >> column [
	"Relation named: #column type: #FamixSQLTColumn opposite: #incomingReferences"

	<generated>
	<target>
	^ column
]

{ #category : #accessing }
FamixSQLTColumnReference >> column: anObject [

	<generated>
	column := anObject
]

{ #category : #accessing }
FamixSQLTColumnReference >> referencer [
	"Relation named: #referencer type: #FamixSQLTWithColumnReference opposite: #columnReferences"

	<generated>
	<source>
	^ referencer
]

{ #category : #accessing }
FamixSQLTColumnReference >> referencer: anObject [

	<generated>
	referencer := anObject
]
