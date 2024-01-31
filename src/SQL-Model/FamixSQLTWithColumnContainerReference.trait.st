"
## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `references` | `FamixSQLTWithColumnContainerReference` | `referencer` | `FamixSQLTColumnContainerReference` | |



"
Trait {
	#name : #FamixSQLTWithColumnContainerReference,
	#instVars : [
		'#references => FMMany type: #FamixSQLTColumnContainerReference opposite: #referencer'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTWithColumnContainerReference classSide >> annotation [

	<FMClass: #TWithColumnContainerReference super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLTWithColumnContainerReference >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #accessing }
FamixSQLTWithColumnContainerReference >> references [
	"Relation named: #references type: #FamixSQLTColumnContainerReference opposite: #referencer"

	<generated>
	<derived>
	^ references
]

{ #category : #accessing }
FamixSQLTWithColumnContainerReference >> references: anObject [

	<generated>
	references value: anObject
]
