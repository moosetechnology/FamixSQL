"
I represent a CRUD query

## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `containerEntity` | `FamixSQLTQuery` | `queries` | `FamixSQLTQueryContainer` | |



"
Trait {
	#name : #FamixSQLTQuery,
	#instVars : [
		'#containerEntity => FMOne type: #FamixSQLTQueryContainer opposite: #queries'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTQuery classSide >> annotation [

	<FMClass: #TQuery super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLTQuery >> containerEntity [
	"Relation named: #containerEntity type: #FamixSQLTQueryContainer opposite: #queries"

	<generated>
	<container>
	^ containerEntity
]

{ #category : #accessing }
FamixSQLTQuery >> containerEntity: anObject [

	<generated>
	containerEntity := anObject
]

{ #category : #navigation }
FamixSQLTQuery >> containerEntityGroup [
	<generated>
	<navigation: 'ContainerEntity'>
	^ MooseSpecializedGroup with: self containerEntity
]
