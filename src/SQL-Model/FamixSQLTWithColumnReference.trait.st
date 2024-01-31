"
## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columnReferences` | `FamixSQLTWithColumnReference` | `referencer` | `FamixSQLTColumnReference` | |



"
Trait {
	#name : #FamixSQLTWithColumnReference,
	#instVars : [
		'#columnReferences => FMMany type: #FamixSQLTColumnReference opposite: #referencer'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTWithColumnReference classSide >> annotation [

	<FMClass: #TWithColumnReference super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLTWithColumnReference >> addColumnReference: anObject [
	<generated>
	^ self columnReferences add: anObject
]

{ #category : #accessing }
FamixSQLTWithColumnReference >> columnReferences [
	"Relation named: #columnReferences type: #FamixSQLTColumnReference opposite: #referencer"

	<generated>
	<derived>
	^ columnReferences
]

{ #category : #accessing }
FamixSQLTWithColumnReference >> columnReferences: anObject [

	<generated>
	columnReferences value: anObject
]
