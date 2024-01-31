"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `referencer` | `FamixSQLTColumnContainerReference` | `references` | `FamixSQLTWithColumnContainerReference` | |

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columnContainer` | `FamixSQLTColumnContainerReference` | `incomingReferences` | `FamixSQLTColumnContainer` | |



"
Trait {
	#name : #FamixSQLTColumnContainerReference,
	#instVars : [
		'#referencer => FMOne type: #FamixSQLTWithColumnContainerReference opposite: #references',
		'#columnContainer => FMOne type: #FamixSQLTColumnContainer opposite: #incomingReferences'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTColumnContainerReference classSide >> annotation [

	<FMClass: #TColumnContainerReference super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLTColumnContainerReference >> columnContainer [
	"Relation named: #columnContainer type: #FamixSQLTColumnContainer opposite: #incomingReferences"

	<generated>
	<target>
	^ columnContainer
]

{ #category : #accessing }
FamixSQLTColumnContainerReference >> columnContainer: anObject [

	<generated>
	columnContainer := anObject
]

{ #category : #accessing }
FamixSQLTColumnContainerReference >> referencer [
	"Relation named: #referencer type: #FamixSQLTWithColumnContainerReference opposite: #references"

	<generated>
	<source>
	^ referencer
]

{ #category : #accessing }
FamixSQLTColumnContainerReference >> referencer: anObject [

	<generated>
	referencer := anObject
]
