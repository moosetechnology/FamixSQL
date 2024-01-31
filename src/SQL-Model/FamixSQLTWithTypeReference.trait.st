"
## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeReferences` | `FamixSQLTWithTypeReference` | `referencer` | `FamixSQLTTypeReference` | |



"
Trait {
	#name : #FamixSQLTWithTypeReference,
	#instVars : [
		'#typeReferences => FMMany type: #FamixSQLTTypeReference opposite: #referencer'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTWithTypeReference classSide >> annotation [

	<FMClass: #TWithTypeReference super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLTWithTypeReference >> addTypeReference: anObject [
	<generated>
	^ self typeReferences add: anObject
]

{ #category : #accessing }
FamixSQLTWithTypeReference >> typeReferences [
	"Relation named: #typeReferences type: #FamixSQLTTypeReference opposite: #referencer"

	<generated>
	<derived>
	^ typeReferences
]

{ #category : #accessing }
FamixSQLTWithTypeReference >> typeReferences: anObject [

	<generated>
	typeReferences value: anObject
]
