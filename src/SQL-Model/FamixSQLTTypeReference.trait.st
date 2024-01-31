"
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



"
Trait {
	#name : #FamixSQLTTypeReference,
	#instVars : [
		'#referencer => FMOne type: #FamixSQLTWithTypeReference opposite: #typeReferences',
		'#type => FMOne type: #FamixSQLTType opposite: #incomingReferences'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTTypeReference classSide >> annotation [

	<FMClass: #TTypeReference super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLTTypeReference >> referencer [
	"Relation named: #referencer type: #FamixSQLTWithTypeReference opposite: #typeReferences"

	<generated>
	<source>
	^ referencer
]

{ #category : #accessing }
FamixSQLTTypeReference >> referencer: anObject [

	<generated>
	referencer := anObject
]

{ #category : #accessing }
FamixSQLTTypeReference >> type [
	"Relation named: #type type: #FamixSQLTType opposite: #incomingReferences"

	<generated>
	<target>
	^ type
]

{ #category : #accessing }
FamixSQLTTypeReference >> type: anObject [

	<generated>
	type := anObject
]
